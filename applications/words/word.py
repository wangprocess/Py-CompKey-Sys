from applications.words import compkey_blue
from models import SeedWordModel, CompWordModel, SeedwordCompword, AgencyWordModel, OssModel
from flask import request
from algorithm import compkey_alg, plot, get_agencywords, plot_cloud
from extensions import db
from utils import success_api, fail_api, data_api, OSSUtil, generate_image, generate_word_analysis_report
from flask import render_template


def is_seedword_searched(seedword):
    """判断种子关键词是否被查过"""
    res = SeedWordModel.query.filter_by(word=seedword).count()
    return bool(res)


def is_compword_existed(compword):
    """判断种子关键词是否被查过"""
    res = CompWordModel.query.filter_by(word=compword).count()
    return bool(res)


def is_agencyword_existed(agencyword):
    """判断种子关键词是否被查过"""
    res = AgencyWordModel.query.filter_by(word=agencyword).count()
    return bool(res)


@compkey_blue.route('/lists', methods=['GET'])
def get_compword():
    print("你好")
    if request.method == 'GET':
        seedword = request.args.get('seedword',type=str)
        # seedword = request.form.get('seedword')
        print("seedword如下:")
        print(seedword)
        print("结束")
        result = {'seedword': {'word': seedword}}
        if is_seedword_searched(seedword):
            seedword_model = SeedWordModel.query.filter_by(word=seedword).first()
            seedword_model.num += 1
            db.session.commit()

            oss_model_image = OssModel.query.filter_by(id=seedword_model.image).first()
            oss_model_chart = OssModel.query.filter_by(id=seedword_model.chart).first()
            oss_model_wordcloud = OssModel.query.filter_by(id=seedword_model.word_cloud).first()

            result['seedword'] = {
                'word': seedword,
                'image': oss_model_image.path if oss_model_image else 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/1b685172-9324-11ee-b9f6-744ca17172e4.png',
                'chart': oss_model_chart.path if oss_model_chart else 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/1b685172-9324-11ee-b9f6-744ca17172e4.png',
                'word_cloud': oss_model_wordcloud.path if oss_model_wordcloud else 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/1b685172-9324-11ee-b9f6-744ca17172e4.png',
                'introduction': seedword_model.introduction if seedword_model.introduction else '史'
            }
            count = 1
            for middle in seedword_model.compwords:
                oss_model_image = OssModel.query.filter_by(id=middle.compword.image).first()
                result['compword' + str(count)] = {
                    'word': middle.compword.word,
                    'comp': middle.comp_value,
                    'image': oss_model_image.path if oss_model_image else None,
                    'introduction': middle.compword.introduction if middle.compword.introduction else '史'
                }
                count += 1
            print(result)
            return render_template('topic-listing.html', result=result)

        else:
            print("使用compkey算法")
            seedword_list = [seedword]
            output = compkey_alg(seedword_list)
            compword_list = [value['compkey'] for value in output.values()]

            image_path = plot(seedword)
            wordcloud_path = plot_cloud(seedword, compword_list)

            _oss_util = OSSUtil()
            image_oss_path = _oss_util.put_object(image_path)
            wordcloud_oss_path = _oss_util.put_object(wordcloud_path)

            # 存种子关键词竞争性关键词comp分析表的OSS
            oss_model = OssModel()
            oss_model.name = 'seedword_' + seedword + '.jpg'
            oss_model.path = image_oss_path
            oss_model.detail = "这是种子关键词" + seedword + "的竞争性关键词词comp度对比图"
            db.session.add(oss_model)
            db.session.commit()
            oss_model = OssModel.query.filter_by(name='seedword_' + seedword + '.jpg').first()

            # 存种子关键词词云的OSS
            oss_model_wordcloud = OssModel()
            oss_model_wordcloud.name = 'wordcloud_' + seedword + '.jpg'
            oss_model_wordcloud.path = wordcloud_oss_path
            oss_model_wordcloud.detail = "这是种子关键词" + seedword + "的词云图"
            db.session.add(oss_model_wordcloud)
            db.session.commit()
            oss_model_wordcloud = OssModel.query.filter_by(name='wordcloud_' + seedword + '.jpg').first()

            # 存GPT生成的种子关键词的图片的OSS
            oss_model_seed = OssModel()
            oss_model_seed.name = seedword + '.jpg'
            agencyword_list = get_agencywords(seedword)
            oss_model_seed.path = generate_image(seedword, agencyword_list)
            oss_model_seed.detail = "这是种子关键词" + seedword + "的图片"
            db.session.add(oss_model_seed)
            db.session.commit()
            oss_model_seed = OssModel.query.filter_by(name=seedword + '.jpg').first()

            seedword_model = SeedWordModel()
            seedword_model.word = seedword
            seedword_model.num = 1
            seedword_model.introduction = generate_word_analysis_report(seedword, agencyword_list)
            seedword_model.image = oss_model_seed.id
            seedword_model.chart = oss_model.id
            seedword_model.word_cloud = oss_model_wordcloud.id
            db.session.add(seedword_model)
            db.session.commit()

            result['seedword'] = {
                'word': seedword,
                'image': oss_model_seed.path if oss_model_seed.path else 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/1b685172-9324-11ee-b9f6-744ca17172e4.png',
                'chart': oss_model.path if oss_model.path else 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/1b685172-9324-11ee-b9f6-744ca17172e4.png',
                'word_cloud': oss_model_wordcloud.path if oss_model_wordcloud.path else 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/1b685172-9324-11ee-b9f6-744ca17172e4.png',
                'introduction': seedword_model.introduction if seedword_model.introduction else '史'
            }

            seedword_model = SeedWordModel.query.filter_by(word=seedword).first()

            count = 0  # 计数用
            get_num = 10  # 存的竞争性关键词个数
            with open('algorithm/comp_plus/seedword_' + seedword + '.txt', 'r', encoding='utf-8') as file:
                for record in file:
                    info = record.split("||")
                    print(count)
                    compkey = info[0][6:]
                    comp = info[1][5:]
                    agency_list = info[2][9:].split(",")
                    if not is_compword_existed(compkey):
                        oss_model_comp = OssModel()
                        oss_model_comp.name = compkey + '.jpg'
                        oss_model_comp.path = generate_image(compkey, agency_list)
                        print(oss_model_comp.path)
                        oss_model_comp.detail = "这是竞争性关键词" + compkey + "的图片"
                        db.session.add(oss_model_comp)
                        db.session.commit()
                        oss_model_comp = OssModel.query.filter_by(name=compkey + '.jpg').first()

                        compword_model = CompWordModel()
                        compword_model.word = compkey
                        compword_model.introduction = generate_word_analysis_report(compkey, agency_list)
                        print(compword_model.introduction)
                        compword_model.image = oss_model_comp.id
                        db.session.add(compword_model)
                        db.session.commit()

                    compword_model = CompWordModel.query.filter_by(word=compkey).first()
                    middle_table = SeedwordCompword()
                    middle_table.comp_value = comp
                    middle_table.compword = compword_model
                    seedword_model.compwords.append(middle_table)
                    db.session.commit()

                    oss_model_comp = OssModel.query.filter_by(name=compkey + '.jpg').first()
                    if oss_model_comp:
                        path = oss_model_comp.path
                    else:
                        path = 'https://business-03.oss-cn-hangzhou.aliyuncs.com/images/1b685172-9324-11ee-b9f6-744ca17172e4.png'

                    result['compword' + str(count+1)] = {
                        'word': compkey,
                        'comp': comp,
                        'image': path,
                        'introduction': compword_model.introduction if compword_model.introduction else '史'
                    }

                    for agencyword in agency_list:
                        if not is_agencyword_existed(agencyword):
                            agencyword_model = AgencyWordModel()
                            agencyword_model.word = agencyword
                            db.session.add(agencyword_model)
                            db.session.commit()

                        agencyword_model = AgencyWordModel.query.filter_by(word=agencyword).first()
                        middle_table.agencywords.append(agencyword_model)
                        db.session.commit()
                    count += 1
                    if count == get_num:
                        break

            return data_api(
                message='成功获取',
                result=result
            )

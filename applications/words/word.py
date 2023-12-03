from applications.words import compkey_blue
from models import SeedWordModel, CompWordModel, SeedwordCompword, AgencyWordModel
from flask import request
from algorithm import compkey_alg
from extensions import db


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

@compkey_blue.route('/getCompword', methods=['POST'])
def get_compword():
    if request.method == 'POST':
        seedword = request.form.get('seedword')
        if is_seedword_searched(seedword):
            seedword_model = SeedWordModel.query.filter_by(word=seedword).first()
            seedword_model.num += 1
            db.session.commit()
            return "ok"

        else:
            print("使用compkey算法")
            seedword_list = [seedword]
            compkey_alg(seedword_list)
            count = 0
            get_num = 10

            seedword_model = SeedWordModel()
            seedword_model.word = seedword
            seedword_model.num = 1
            db.session.add(seedword_model)
            db.session.commit()

            seedword_model = SeedWordModel.query.filter_by(word=seedword).first()
            with open('algorithm/comp_plus/seedword_' + seedword + '.txt', 'r', encoding='utf-8') as file:
                for record in file:
                    info = record.split("||")
                    compkey = info[0][6:]
                    comp = info[1][5:]
                    agency_list = info[2][9:].split(",")
                    if not is_compword_existed(compkey):
                        compword_model = CompWordModel()
                        compword_model.word = compkey
                        db.session.add(compword_model)
                        db.session.commit()

                    compword_model = CompWordModel.query.filter_by(word=compkey).first()
                    middle_table = SeedwordCompword()
                    middle_table.comp_value = comp
                    middle_table.compword = compword_model
                    seedword_model.compwords.append(middle_table)
                    db.session.commit()

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

            return "正在计算"

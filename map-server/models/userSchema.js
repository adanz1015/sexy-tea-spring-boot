let mongoose = require('mongoose')
let Schema = mongoose.Schema;

let userSchema = new Schema({
    "UserID": String,
    "UserName": String,
    "Password": String,
    "NickName": String,
    "Gender": String,
    "MemberShip": {
        "StarLevel": String,
        "StarNumber": Number,
        "StarOfNextLevNeed": Number,
        "Privileges": {
            "GreenPri": {
                "RewardsWelcomeToGreenDrink": Boolean,
                "RewardsBithdayDrink": Boolean,
                "RewardsTasteOfGoldDrink": Boolean,
                "rewardsGreenForever": Boolean
            },
            "GoldPri": {
                "RewardsWelcomeToGoldDrink": Boolean,
                "RewardsAnniversaryDrink": Boolean,
                "RewardsStarsRedemption": Boolean,
                "RewardsDigitalGoldSvc": Boolean
            }
        },
        "ExpireDate": String
    },
    "SvcCard": {
        "CardID": String,
        "Balance": Number,
        "CardImage": String
    },
    "MyRewards": [
        {
            "Title": String,
            "StartDate": String,
            "ExpireDate": String,
            "UseDate": String,
            "State": String,
            "GoodsType": String,
            "RequireType": String,
            "Require": String,
            "RewardsType": String,
            "Rewards": String,
            "Image": String,
            "Rules": String
        }
    ],
    "ExpensesRecord": [
        {
            "ConsumeDate": String,
            "StoreName": String,
            "GoodsItem": [
                {
                    "GoodsName": String,
                    "GoodsPrice": Number,
                    "GoodsSize": String,
                    "GoodsNum": Number
                }
            ],
            "TotalPrice": Number,
            "StarsGain": Number
        }
    ]
});

module.exports = userSchema;

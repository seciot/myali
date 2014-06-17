.class public Lcom/alipay/mobilebill/biz/ebill/model/AnnualEbill;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public chanceIncomeAmount:Ljava/lang/String;

.field public consumeTypeAndPercent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/ebill/model/TypeAndPercent;",
            ">;"
        }
    .end annotation
.end field

.field public gender:Ljava/lang/String;

.field public hasAnnualEbill:Z

.field public incomeAddress:Ljava/lang/String;

.field public incomeAmount:Ljava/lang/String;

.field public incomePercent:Ljava/lang/String;

.field public incomeRate:Ljava/lang/String;

.field public isInMobile:Z

.field public mobileAmount:Ljava/lang/String;

.field public out2011Amount:Ljava/lang/String;

.field public out2012Amount:Ljava/lang/String;

.field public out2013Amount:Ljava/lang/String;

.field public outTotalAmount:Ljava/lang/String;

.field public shareTopic:Lcom/alipay/mobilebill/biz/ebill/model/ShareTopic;

.field public showFree:Z

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardRemindRespVO;
.super Lcom/alipay/mobileprod/core/model/ccr/BaseRespVO;


# instance fields
.field public remindDay:Ljava/lang/String;

.field public remindStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/ccr/BaseRespVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemindDay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardRemindRespVO;->remindDay:Ljava/lang/String;

    return-object v0
.end method

.method public getRemindStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardRemindRespVO;->remindStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setRemindDay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardRemindRespVO;->remindDay:Ljava/lang/String;

    return-void
.end method

.method public setRemindStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/ccr/vo/GetCreditCardRemindRespVO;->remindStatus:Ljava/lang/String;

    return-void
.end method

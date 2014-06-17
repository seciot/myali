.class public Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;
.super Lcom/alipay/mobileprod/biz/shared/ccr/domain/BaseModel;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bankMark:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public phoneSwitch:I

.field public smsMobile:Ljava/lang/String;

.field public smsSwitch:I

.field public smsTelecom:Ljava/lang/String;

.field public smsTemplate:Ljava/lang/String;

.field public smsUnicon:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getBankMark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->bankMark:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneSwitch()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->phoneSwitch:I

    return v0
.end method

.method public getSmsMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->smsMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsSwitch()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->smsSwitch:I

    return v0
.end method

.method public getSmsTelecom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->smsTelecom:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsTemplate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->smsTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsUnicon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->smsUnicon:Ljava/lang/String;

    return-object v0
.end method

.method public setBankMark(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->bankMark:Ljava/lang/String;

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->phone:Ljava/lang/String;

    return-void
.end method

.method public setPhoneSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->phoneSwitch:I

    return-void
.end method

.method public setSmsMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->smsMobile:Ljava/lang/String;

    return-void
.end method

.method public setSmsSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->smsSwitch:I

    return-void
.end method

.method public setSmsTelecom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->smsTelecom:Ljava/lang/String;

    return-void
.end method

.method public setSmsTemplate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->smsTemplate:Ljava/lang/String;

    return-void
.end method

.method public setSmsUnicon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileprod/biz/shared/ccr/domain/BillChannel;->smsUnicon:Ljava/lang/String;

    return-void
.end method

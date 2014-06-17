.class public Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public bizSubType:Ljava/lang/String;

.field public contactId:Ljava/lang/String;

.field public inOut:Ljava/lang/String;

.field public instId:Ljava/lang/String;

.field public needMarkName:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizSubType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;->bizSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getContactId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;->contactId:Ljava/lang/String;

    return-object v0
.end method

.method public getInOut()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;->inOut:Ljava/lang/String;

    return-object v0
.end method

.method public getInstId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;->instId:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedMarkName()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;->needMarkName:Z

    return v0
.end method

.method public setBizSubType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;->bizSubType:Ljava/lang/String;

    return-void
.end method

.method public setContactId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;->contactId:Ljava/lang/String;

    return-void
.end method

.method public setInOut(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;->inOut:Ljava/lang/String;

    return-void
.end method

.method public setInstId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;->instId:Ljava/lang/String;

    return-void
.end method

.method public setNeedMarkName(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;->needMarkName:Z

    return-void
.end method

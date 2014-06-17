.class public Lcom/alipay/mobilebill/biz/shared/contact/model/ContactModel;
.super Ljava/lang/Object;


# instance fields
.field public billModel:Lcom/alipay/mobilebill/biz/shared/contact/model/BillModel;

.field public contactDataType:Ljava/lang/String;

.field public gmtCreate:Ljava/util/Date;

.field public recordModel:Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;

.field public statistModel:Lcom/alipay/mobilebill/biz/shared/contact/model/StatistModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBillModel()Lcom/alipay/mobilebill/biz/shared/contact/model/BillModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactModel;->billModel:Lcom/alipay/mobilebill/biz/shared/contact/model/BillModel;

    return-object v0
.end method

.method public getContactDataType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactModel;->contactDataType:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtCreate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactModel;->gmtCreate:Ljava/util/Date;

    return-object v0
.end method

.method public getRecordModel()Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactModel;->recordModel:Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;

    return-object v0
.end method

.method public getStatistModel()Lcom/alipay/mobilebill/biz/shared/contact/model/StatistModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactModel;->statistModel:Lcom/alipay/mobilebill/biz/shared/contact/model/StatistModel;

    return-object v0
.end method

.method public setBillModel(Lcom/alipay/mobilebill/biz/shared/contact/model/BillModel;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactModel;->billModel:Lcom/alipay/mobilebill/biz/shared/contact/model/BillModel;

    return-void
.end method

.method public setContactDataType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactModel;->contactDataType:Ljava/lang/String;

    return-void
.end method

.method public setGmtCreate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactModel;->gmtCreate:Ljava/util/Date;

    return-void
.end method

.method public setRecordModel(Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactModel;->recordModel:Lcom/alipay/mobilebill/biz/shared/contact/model/RecordModel;

    return-void
.end method

.method public setStatistModel(Lcom/alipay/mobilebill/biz/shared/contact/model/StatistModel;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/contact/model/ContactModel;->statistModel:Lcom/alipay/mobilebill/biz/shared/contact/model/StatistModel;

    return-void
.end method

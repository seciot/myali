.class public Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailField;
.super Lcom/alipay/mobilebill/common/util/ToString;


# instance fields
.field private layoutType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilebill/common/util/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailField;->layoutType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailField;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setLayoutType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailField;->layoutType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailField;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailField;->value:Ljava/lang/String;

    return-void
.end method

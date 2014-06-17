.class public Lcom/alipay/mobilebill/biz/shared/bill/model/BillList;
.super Ljava/lang/Object;


# instance fields
.field public billList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;",
            ">;"
        }
    .end annotation
.end field

.field public customerType:Ljava/lang/String;

.field public extendField:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public result:Lcom/alipay/mobile/framework/service/ext/BizResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillList;->extendField:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBillList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillList;->billList:Ljava/util/List;

    return-object v0
.end method

.method public getCustomerType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillList;->customerType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendField()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillList;->extendField:Ljava/util/Map;

    return-object v0
.end method

.method public getResult()Lcom/alipay/mobile/framework/service/ext/BizResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillList;->result:Lcom/alipay/mobile/framework/service/ext/BizResult;

    return-object v0
.end method

.method public setBillList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/MonthBill;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillList;->billList:Ljava/util/List;

    return-void
.end method

.method public setCustomerType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillList;->customerType:Ljava/lang/String;

    return-void
.end method

.method public setExtendField(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillList;->extendField:Ljava/util/Map;

    return-void
.end method

.method public setResult(Lcom/alipay/mobile/framework/service/ext/BizResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillList;->result:Lcom/alipay/mobile/framework/service/ext/BizResult;

    return-void
.end method

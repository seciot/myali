.class public Lcom/alipay/mobilebill/biz/shared/bill/model/BillDetail;
.super Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;


# instance fields
.field public result:Lcom/alipay/mobile/framework/service/ext/BizResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult()Lcom/alipay/mobile/framework/service/ext/BizResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillDetail;->result:Lcom/alipay/mobile/framework/service/ext/BizResult;

    return-object v0
.end method

.method public setResult(Lcom/alipay/mobile/framework/service/ext/BizResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillDetail;->result:Lcom/alipay/mobile/framework/service/ext/BizResult;

    return-void
.end method

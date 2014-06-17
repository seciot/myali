.class public Lcom/alipay/mobilebill/biz/bill/model/billdetail/GetBillDetailRequest;
.super Lcom/alipay/mobilebill/common/util/ToString;


# instance fields
.field private bizType:Ljava/lang/String;

.field private clientType:Ljava/lang/String;

.field private gmtCreate:J

.field private tradeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilebill/common/util/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/GetBillDetailRequest;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getClientType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/GetBillDetailRequest;->clientType:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtCreate()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/GetBillDetailRequest;->gmtCreate:J

    return-wide v0
.end method

.method public getTradeNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/GetBillDetailRequest;->tradeNo:Ljava/lang/String;

    return-object v0
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/GetBillDetailRequest;->bizType:Ljava/lang/String;

    return-void
.end method

.method public setClientType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/GetBillDetailRequest;->clientType:Ljava/lang/String;

    return-void
.end method

.method public setGmtCreate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/GetBillDetailRequest;->gmtCreate:J

    return-void
.end method

.method public setTradeNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/GetBillDetailRequest;->tradeNo:Ljava/lang/String;

    return-void
.end method

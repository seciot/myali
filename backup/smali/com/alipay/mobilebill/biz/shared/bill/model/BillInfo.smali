.class public Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;
.super Ljava/lang/Object;


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public backTax:Ljava/lang/String;

.field public billKey:Ljava/lang/String;

.field public billName:Ljava/lang/String;

.field public billSource:Ljava/lang/String;

.field public billType:Ljava/lang/String;

.field public bizInNo:Ljava/lang/String;

.field public bizInNos:Ljava/lang/String;

.field public bizOutNo:Ljava/lang/String;

.field public bizStateDesc:Ljava/lang/String;

.field public bizSubType:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public canDelete:Z

.field public category:Ljava/lang/String;

.field public ccrTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public consumeFee:Ljava/lang/String;

.field public consumeMemo:Ljava/lang/String;

.field public consumeStatus:Ljava/lang/String;

.field public consumeTitle:Ljava/lang/String;

.field public contactData:Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;

.field public deliveryManMobile:Ljava/lang/String;

.field public discountInfo:Ljava/lang/String;

.field public failFundDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FundDetail;",
            ">;"
        }
    .end annotation
.end field

.field public foreignCurrencyDesc:Ljava/lang/String;

.field public fundDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FundDetail;",
            ">;"
        }
    .end annotation
.end field

.field public gmtCreate:J

.field public gmtCreateDesc:Ljava/lang/String;

.field public gmtLastModifyDesc:Ljava/lang/String;

.field public goodsLogo:Ljava/lang/String;

.field public goodsTitles:Ljava/lang/String;

.field public inOut:Ljava/lang/String;

.field public instId:Ljava/lang/String;

.field public instName:Ljava/lang/String;

.field public invoiceNo:Ljava/lang/String;

.field public logisticsErrorCode:Ljava/lang/String;

.field public logisticsFee:Ljava/lang/String;

.field public logisticsName:Ljava/lang/String;

.field public logisticsTrace:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/TraceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public messageCosumeTitle:Ljava/lang/String;

.field public oppositeLogo:Ljava/lang/String;

.field public oppositeLogonId:Ljava/lang/String;

.field public oppositeName:Ljava/lang/String;

.field public oppositeUserid:Ljava/lang/String;

.field public otherFee:Ljava/lang/String;

.field public parValue:Ljava/lang/String;

.field public peerpayApplied:Z

.field public peerpayModel:Lcom/alipay/mobilebill/biz/shared/bill/model/PeerpayModel;

.field public preTransferDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public productLaunch:Ljava/lang/String;

.field public receiveAddress:Ljava/lang/String;

.field public refundReason:Ljava/lang/String;

.field public refundTime:Ljava/lang/String;

.field public regularOppsiteName:Ljava/lang/String;

.field public secPayBizSubType:Ljava/lang/String;

.field public secPayBizType:Ljava/lang/String;

.field public serviceFee:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public tmallBatchDesc:Ljava/lang/String;

.field public tradeType:Ljava/lang/String;

.field public transferSpeed:Ljava/lang/String;

.field public transferToCardDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public voiceMemoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->canDelete:Z

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getBackTax()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->backTax:Ljava/lang/String;

    return-object v0
.end method

.method public getBillKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->billKey:Ljava/lang/String;

    return-object v0
.end method

.method public getBillName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->billName:Ljava/lang/String;

    return-object v0
.end method

.method public getBillSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->billSource:Ljava/lang/String;

    return-object v0
.end method

.method public getBillType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->billType:Ljava/lang/String;

    return-object v0
.end method

.method public getBizInNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->bizInNo:Ljava/lang/String;

    return-object v0
.end method

.method public getBizInNos()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->bizInNos:Ljava/lang/String;

    return-object v0
.end method

.method public getBizOutNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->bizOutNo:Ljava/lang/String;

    return-object v0
.end method

.method public getBizStateDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->bizStateDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getBizSubType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->bizSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->bizType:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getCcrTrace()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->ccrTrace:Ljava/util/List;

    return-object v0
.end method

.method public getConsumeFee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->consumeFee:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->consumeMemo:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->consumeStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getConsumeTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->consumeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getContactData()Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->contactData:Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;

    return-object v0
.end method

.method public getDeliveryManMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->deliveryManMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->discountInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getFailFundDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FundDetail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->failFundDetails:Ljava/util/List;

    return-object v0
.end method

.method public getFundDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FundDetail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->fundDetails:Ljava/util/List;

    return-object v0
.end method

.method public getGmtCreate()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->gmtCreate:J

    return-wide v0
.end method

.method public getGmtCreateDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->gmtCreateDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtLastModifyDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->gmtLastModifyDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->goodsLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsTitles()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->goodsTitles:Ljava/lang/String;

    return-object v0
.end method

.method public getInOut()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->inOut:Ljava/lang/String;

    return-object v0
.end method

.method public getInstId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->instId:Ljava/lang/String;

    return-object v0
.end method

.method public getInstName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->instName:Ljava/lang/String;

    return-object v0
.end method

.method public getInvoiceNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->invoiceNo:Ljava/lang/String;

    return-object v0
.end method

.method public getLogisticsErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->logisticsErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLogisticsFee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->logisticsFee:Ljava/lang/String;

    return-object v0
.end method

.method public getLogisticsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->logisticsName:Ljava/lang/String;

    return-object v0
.end method

.method public getLogisticsTrace()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/TraceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->logisticsTrace:Ljava/util/List;

    return-object v0
.end method

.method public getOppositeLogonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->oppositeLogonId:Ljava/lang/String;

    return-object v0
.end method

.method public getOppositeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->oppositeName:Ljava/lang/String;

    return-object v0
.end method

.method public getOppositeUserid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->oppositeUserid:Ljava/lang/String;

    return-object v0
.end method

.method public getOtherFee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->otherFee:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerpayModel()Lcom/alipay/mobilebill/biz/shared/bill/model/PeerpayModel;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->peerpayModel:Lcom/alipay/mobilebill/biz/shared/bill/model/PeerpayModel;

    return-object v0
.end method

.method public getPreTransferDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->preTransferDetails:Ljava/util/List;

    return-object v0
.end method

.method public getReceiveAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->receiveAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getRefundReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->refundReason:Ljava/lang/String;

    return-object v0
.end method

.method public getRefundTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->refundTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSecPayBizSubType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->secPayBizSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getSecPayBizType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->secPayBizType:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceFee()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->serviceFee:Ljava/lang/String;

    return-object v0
.end method

.method public getTmallBatchDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->tmallBatchDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTradeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->tradeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferSpeed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->transferSpeed:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferToCardDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->transferToCardDetails:Ljava/util/List;

    return-object v0
.end method

.method public isCanDelete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->canDelete:Z

    return v0
.end method

.method public isPeerpayApplied()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->peerpayApplied:Z

    return v0
.end method

.method public setActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->actions:Ljava/util/List;

    return-void
.end method

.method public setBackTax(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->backTax:Ljava/lang/String;

    return-void
.end method

.method public setBillKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->billKey:Ljava/lang/String;

    return-void
.end method

.method public setBillName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->billName:Ljava/lang/String;

    return-void
.end method

.method public setBillSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->billSource:Ljava/lang/String;

    return-void
.end method

.method public setBillType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->billType:Ljava/lang/String;

    return-void
.end method

.method public setBizInNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->bizInNo:Ljava/lang/String;

    return-void
.end method

.method public setBizInNos(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->bizInNos:Ljava/lang/String;

    return-void
.end method

.method public setBizOutNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->bizOutNo:Ljava/lang/String;

    return-void
.end method

.method public setBizStateDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->bizStateDesc:Ljava/lang/String;

    return-void
.end method

.method public setBizSubType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->bizSubType:Ljava/lang/String;

    return-void
.end method

.method public setBizType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->bizType:Ljava/lang/String;

    return-void
.end method

.method public setCanDelete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->canDelete:Z

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->category:Ljava/lang/String;

    return-void
.end method

.method public setCcrTrace(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->ccrTrace:Ljava/util/List;

    return-void
.end method

.method public setConsumeFee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->consumeFee:Ljava/lang/String;

    return-void
.end method

.method public setConsumeMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->consumeMemo:Ljava/lang/String;

    return-void
.end method

.method public setConsumeStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->consumeStatus:Ljava/lang/String;

    return-void
.end method

.method public setConsumeTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->consumeTitle:Ljava/lang/String;

    return-void
.end method

.method public setContactData(Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->contactData:Lcom/alipay/mobilebill/biz/shared/contact/model/ContactData;

    return-void
.end method

.method public setDeliveryManMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->deliveryManMobile:Ljava/lang/String;

    return-void
.end method

.method public setDiscountInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->discountInfo:Ljava/lang/String;

    return-void
.end method

.method public setFailFundDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FundDetail;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->failFundDetails:Ljava/util/List;

    return-void
.end method

.method public setFundDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FundDetail;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->fundDetails:Ljava/util/List;

    return-void
.end method

.method public setGmtCreate(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->gmtCreate:J

    return-void
.end method

.method public setGmtCreateDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->gmtCreateDesc:Ljava/lang/String;

    return-void
.end method

.method public setGmtLastModifyDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->gmtLastModifyDesc:Ljava/lang/String;

    return-void
.end method

.method public setGoodsLogo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->goodsLogo:Ljava/lang/String;

    return-void
.end method

.method public setGoodsTitles(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->goodsTitles:Ljava/lang/String;

    return-void
.end method

.method public setInOut(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->inOut:Ljava/lang/String;

    return-void
.end method

.method public setInstId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->instId:Ljava/lang/String;

    return-void
.end method

.method public setInstName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->instName:Ljava/lang/String;

    return-void
.end method

.method public setInvoiceNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->invoiceNo:Ljava/lang/String;

    return-void
.end method

.method public setLogisticsErrorCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->logisticsErrorCode:Ljava/lang/String;

    return-void
.end method

.method public setLogisticsFee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->logisticsFee:Ljava/lang/String;

    return-void
.end method

.method public setLogisticsName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->logisticsName:Ljava/lang/String;

    return-void
.end method

.method public setLogisticsTrace(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/TraceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->logisticsTrace:Ljava/util/List;

    return-void
.end method

.method public setOppositeLogonId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->oppositeLogonId:Ljava/lang/String;

    return-void
.end method

.method public setOppositeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->oppositeName:Ljava/lang/String;

    return-void
.end method

.method public setOppositeUserid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->oppositeUserid:Ljava/lang/String;

    return-void
.end method

.method public setOtherFee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->otherFee:Ljava/lang/String;

    return-void
.end method

.method public setPeerpayApplied(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->peerpayApplied:Z

    return-void
.end method

.method public setPeerpayModel(Lcom/alipay/mobilebill/biz/shared/bill/model/PeerpayModel;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->peerpayModel:Lcom/alipay/mobilebill/biz/shared/bill/model/PeerpayModel;

    return-void
.end method

.method public setPreTransferDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->preTransferDetails:Ljava/util/List;

    return-void
.end method

.method public setReceiveAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->receiveAddress:Ljava/lang/String;

    return-void
.end method

.method public setRefundReason(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->refundReason:Ljava/lang/String;

    return-void
.end method

.method public setRefundTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->refundTime:Ljava/lang/String;

    return-void
.end method

.method public setSecPayBizSubType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->secPayBizSubType:Ljava/lang/String;

    return-void
.end method

.method public setSecPayBizType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->secPayBizType:Ljava/lang/String;

    return-void
.end method

.method public setServiceFee(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->serviceFee:Ljava/lang/String;

    return-void
.end method

.method public setTmallBatchDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->tmallBatchDesc:Ljava/lang/String;

    return-void
.end method

.method public setTradeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->tradeType:Ljava/lang/String;

    return-void
.end method

.method public setTransferSpeed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->transferSpeed:Ljava/lang/String;

    return-void
.end method

.method public setTransferToCardDetails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/BillInfo;->transferToCardDetails:Ljava/util/List;

    return-void
.end method

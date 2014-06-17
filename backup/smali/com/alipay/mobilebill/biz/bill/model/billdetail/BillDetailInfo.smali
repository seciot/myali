.class public Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;
.super Lcom/alipay/mobilebill/common/util/ToString;


# instance fields
.field private bizStateAreaTipInfo:Ljava/lang/String;

.field private bizStateDesc:Ljava/lang/String;

.field public bizStateDescSuffix:Ljava/lang/String;

.field private bizStatusLogo:I

.field private deliveryManMobile:Ljava/lang/String;

.field private detailButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailButton;",
            ">;"
        }
    .end annotation
.end field

.field private detailFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailField;",
            ">;"
        }
    .end annotation
.end field

.field private invoiceNo:Ljava/lang/String;

.field public mdapLogParam:Ljava/lang/String;

.field private result:Lcom/alipay/mobile/framework/service/ext/BizResult;

.field private traceInfo:Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailTraceInfo;

.field private useMoaDirectButtonLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilebill/common/util/ToString;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->useMoaDirectButtonLayout:Z

    return-void
.end method


# virtual methods
.method public getBizStateAreaTipInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->bizStateAreaTipInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getBizStateDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->bizStateDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getBizStateDescSuffix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->bizStateDescSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getBizStatusLogo()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->bizStatusLogo:I

    return v0
.end method

.method public getDeliveryManMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->deliveryManMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailButton;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->detailButtons:Ljava/util/List;

    return-object v0
.end method

.method public getDetailFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailField;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->detailFields:Ljava/util/List;

    return-object v0
.end method

.method public getInvoiceNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->invoiceNo:Ljava/lang/String;

    return-object v0
.end method

.method public getMdapLogParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->mdapLogParam:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/alipay/mobile/framework/service/ext/BizResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->result:Lcom/alipay/mobile/framework/service/ext/BizResult;

    return-object v0
.end method

.method public getTraceInfo()Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailTraceInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->traceInfo:Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailTraceInfo;

    return-object v0
.end method

.method public isUseMoaDirectButtonLayout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->useMoaDirectButtonLayout:Z

    return v0
.end method

.method public setBizStateAreaTipInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->bizStateAreaTipInfo:Ljava/lang/String;

    return-void
.end method

.method public setBizStateDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->bizStateDesc:Ljava/lang/String;

    return-void
.end method

.method public setBizStateDescSuffix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->bizStateDescSuffix:Ljava/lang/String;

    return-void
.end method

.method public setBizStatusLogo(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->bizStatusLogo:I

    return-void
.end method

.method public setDeliveryManMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->deliveryManMobile:Ljava/lang/String;

    return-void
.end method

.method public setDetailButtons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailButton;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->detailButtons:Ljava/util/List;

    return-void
.end method

.method public setDetailFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailField;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->detailFields:Ljava/util/List;

    return-void
.end method

.method public setInvoiceNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->invoiceNo:Ljava/lang/String;

    return-void
.end method

.method public setMdapLogParam(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->mdapLogParam:Ljava/lang/String;

    return-void
.end method

.method public setResult(Lcom/alipay/mobile/framework/service/ext/BizResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->result:Lcom/alipay/mobile/framework/service/ext/BizResult;

    return-void
.end method

.method public setTraceInfo(Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailTraceInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->traceInfo:Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailTraceInfo;

    return-void
.end method

.method public setUseMoaDirectButtonLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;->useMoaDirectButtonLayout:Z

    return-void
.end method

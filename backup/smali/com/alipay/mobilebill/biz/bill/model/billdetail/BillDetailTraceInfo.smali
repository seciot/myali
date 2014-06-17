.class public Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailTraceInfo;
.super Lcom/alipay/mobilebill/common/util/ToString;


# instance fields
.field public mdapLogParam:Ljava/lang/String;

.field private traceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private traceListTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilebill/common/util/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getMdapLogParam()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailTraceInfo;->mdapLogParam:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailTraceInfo;->traceList:Ljava/util/List;

    return-object v0
.end method

.method public getTraceListTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailTraceInfo;->traceListTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setMdapLogParam(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailTraceInfo;->mdapLogParam:Ljava/lang/String;

    return-void
.end method

.method public setTraceList(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailTraceInfo;->traceList:Ljava/util/List;

    return-void
.end method

.method public setTraceListTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailTraceInfo;->traceListTitle:Ljava/lang/String;

    return-void
.end method

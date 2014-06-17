.class public Lcom/alipay/mobilebill/core/model/billshare/GetBillShareInfoRequest;
.super Lcom/alipay/mobilebill/common/util/ToString;


# instance fields
.field public yearMonth:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilebill/common/util/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getYearMonth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/core/model/billshare/GetBillShareInfoRequest;->yearMonth:Ljava/lang/String;

    return-object v0
.end method

.method public setYearMonth(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/core/model/billshare/GetBillShareInfoRequest;->yearMonth:Ljava/lang/String;

    return-void
.end method

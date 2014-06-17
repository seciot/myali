.class public Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;
.super Lcom/alipay/mobilebill/biz/shared/bill/model/TraceInfo;


# instance fields
.field public code:Ljava/lang/String;

.field public flag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilebill/biz/shared/bill/model/TraceInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;->flag:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;->code:Ljava/lang/String;

    return-void
.end method

.method public setFlag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilebill/biz/shared/bill/model/FlagTraceInfo;->flag:Ljava/lang/String;

    return-void
.end method

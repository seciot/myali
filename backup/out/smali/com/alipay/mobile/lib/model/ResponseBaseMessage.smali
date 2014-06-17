.class public Lcom/alipay/mobile/lib/model/ResponseBaseMessage;
.super Ljava/lang/Object;
.source "ResponseBaseMessage.java"


# instance fields
.field public mModifyTime:Ljava/lang/String;

.field public mMsgId:Ljava/lang/String;

.field public mMsgType:Ljava/lang/String;

.field public mTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;->mMsgType:Ljava/lang/String;

    .line 15
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;->mMsgId:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;->mModifyTime:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/lib/model/ResponseBaseMessage;->mTime:Ljava/lang/String;

    return-void
.end method

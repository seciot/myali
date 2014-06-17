.class public Lcom/alipay/mobile/lib/model/PubResponseError;
.super Ljava/lang/Object;
.source "PubResponseError.java"


# instance fields
.field public mErrorMsg:Ljava/lang/String;

.field public mErrorType:I

.field public mResultCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/lib/model/PubResponseError;->mErrorType:I

    return-void
.end method

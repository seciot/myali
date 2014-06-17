.class final Lcom/alipay/mobile/onsitepay/payee/x;
.super Ljava/lang/Object;
.source "FacePayeeHead.java"

# interfaces
.implements Lcom/alipay/mobile/common/image/ImageCacheListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/x;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCachePeriod(Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 201
    const-wide v0, 0x9a7ec800L

    return-wide v0
.end method

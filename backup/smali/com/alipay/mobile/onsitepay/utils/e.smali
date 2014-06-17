.class final Lcom/alipay/mobile/onsitepay/utils/e;
.super Ljava/lang/Object;
.source "ShareSavePicThireBtnActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;Ljava/util/Map;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/utils/e;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/utils/e;->a:Ljava/util/Map;

    iput p3, p0, Lcom/alipay/mobile/onsitepay/utils/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/e;->c:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/e;->a:Ljava/util/Map;

    iget v2, p0, Lcom/alipay/mobile/onsitepay/utils/e;->b:I

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;Ljava/util/Map;I)V

    .line 93
    return-void
.end method

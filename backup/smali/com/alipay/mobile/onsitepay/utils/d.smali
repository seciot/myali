.class final Lcom/alipay/mobile/onsitepay/utils/d;
.super Ljava/lang/Object;
.source "ShareSavePicThireBtnActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/alipay/mobile/common/share/ShareContent;

.field final synthetic c:Lcom/alipay/mobile/framework/service/ShareService;

.field final synthetic d:I

.field final synthetic e:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;[BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/utils/d;->e:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/utils/d;->a:[B

    iput-object p3, p0, Lcom/alipay/mobile/onsitepay/utils/d;->b:Lcom/alipay/mobile/common/share/ShareContent;

    iput-object p4, p0, Lcom/alipay/mobile/onsitepay/utils/d;->c:Lcom/alipay/mobile/framework/service/ShareService;

    iput p5, p0, Lcom/alipay/mobile/onsitepay/utils/d;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/d;->e:Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/utils/d;->a:[B

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/utils/d;->b:Lcom/alipay/mobile/common/share/ShareContent;

    iget-object v3, p0, Lcom/alipay/mobile/onsitepay/utils/d;->c:Lcom/alipay/mobile/framework/service/ShareService;

    iget v4, p0, Lcom/alipay/mobile/onsitepay/utils/d;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;[BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    .line 79
    return-void
.end method

.class public final Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;
.super Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;
.source "ShareSavePicThireBtnActivity_.java"


# instance fields
.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->f:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;Ljava/util/Map;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a(Ljava/util/Map;I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;[BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/alipay/mobile/onsitepay/d;->au:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->c:Landroid/widget/Button;

    .line 43
    sget v0, Lcom/alipay/mobile/onsitepay/d;->o:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->e:Landroid/widget/Button;

    .line 44
    sget v0, Lcom/alipay/mobile/onsitepay/d;->ax:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->d:Landroid/widget/Button;

    .line 45
    sget v0, Lcom/alipay/mobile/onsitepay/d;->p:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->b:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    .line 46
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->a()V

    .line 47
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/kabaoprod/core/model/model/SecurityShareInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->f:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/utils/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/onsitepay/utils/e;-><init>(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;Ljava/util/Map;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method

.method public final a([BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v6, p0, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->f:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/onsitepay/utils/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/onsitepay/utils/d;-><init>(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;[BLcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/alipay/mobile/onsitepay/utils/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/onsitepay/utils/f;-><init>(Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget v0, Lcom/alipay/mobile/onsitepay/e;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->setContentView(I)V

    .line 36
    return-void
.end method

.method public final setContentView(I)V
    .locals 0
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->setContentView(I)V

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->c()V

    .line 53
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->setContentView(Landroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->c()V

    .line 65
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/onsitepay/utils/ShareSavePicThireBtnActivity_;->c()V

    .line 59
    return-void
.end method

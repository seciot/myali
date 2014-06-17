.class public final Lcom/alipay/mobile/browser/HtmlActivityV2_;
.super Lcom/alipay/mobile/browser/HtmlActivityV2;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2_;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$001(Lcom/alipay/mobile/browser/HtmlActivityV2_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->finishActivity()V

    return-void
.end method

.method static synthetic access$101(Lcom/alipay/mobile/browser/HtmlActivityV2_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->loadUrl()V

    return-void
.end method

.method static synthetic access$201(Lcom/alipay/mobile/browser/HtmlActivityV2_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->doLoginAndLoadUrl()V

    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/alipay/mobile/browser/HtmlActivityV2_$IntentBuilder_;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/browser/HtmlActivityV2_$IntentBuilder_;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/browser/HtmlActivityV2_$IntentBuilder_;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final doLoginAndLoadUrl()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/browser/HtmlActivityV2_$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/browser/HtmlActivityV2_$3;-><init>(Lcom/alipay/mobile/browser/HtmlActivityV2_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final finishActivity()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/browser/HtmlActivityV2_$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/browser/HtmlActivityV2_$1;-><init>(Lcom/alipay/mobile/browser/HtmlActivityV2_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final loadUrl()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/browser/HtmlActivityV2_$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/browser/HtmlActivityV2_$2;-><init>(Lcom/alipay/mobile/browser/HtmlActivityV2_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/browser/HtmlActivityV2;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/browser/HtmlActivityV2;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/browser/HtmlActivityV2;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/browser/HtmlActivityV2;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

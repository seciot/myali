.class public final Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;
.super Lcom/alipay/mobile/about/ui/FeedAssistantActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->c()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->d()V

    return-void
.end method

.method private f()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->e:Lcom/alipay/mobile/commonui/widget/APEditText;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->f:Lcom/alipay/mobile/commonui/widget/APInputBox;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aV:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->ge:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->g:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fx:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->c:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fy:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->b:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/about/ui/z;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/about/ui/z;-><init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/about/ui/aa;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/about/ui/aa;-><init>(Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->W:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->setContentView(I)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->f()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->f()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/about/ui/FeedAssistantActivity_;->f()V

    return-void
.end method

.class public final Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity_;
.super Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity_;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->c()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->b()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/w;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/w;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/v;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/v;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/u;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/u;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/AlipassForShareActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

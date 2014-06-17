.class public final Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;
.super Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->a(Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/cw;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/cw;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/cu;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/cu;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/cv;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/cv;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/UpdateRemindDateResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/cx;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/cx;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity_;Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/AlipassRemindActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

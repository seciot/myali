.class public final Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;
.super Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;


# instance fields
.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->f()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->d()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->g()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->b()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->h()V

    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->a()V

    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/cd;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/cd;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/cm;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/cm;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/ch;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/alipassapp/ui/ch;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;Lcom/alipay/kabaoprod/biz/mwallet/card/request/MemberCardRequest;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/cl;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/cl;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/cj;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/cj;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/ci;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/ci;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ce;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/ce;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/cf;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/cf;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/cc;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/cc;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/cg;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/cg;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/ck;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/ck;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/AlipassQueryCardActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

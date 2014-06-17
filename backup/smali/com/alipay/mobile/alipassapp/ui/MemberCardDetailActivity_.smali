.class public final Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;
.super Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;


# instance fields
.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/eg;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/eg;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/ef;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/ef;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/ee;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/ee;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/eh;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/eh;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ei;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/ei;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/ej;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/ej;-><init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardDetailActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

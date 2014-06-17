.class final Lcom/alipay/mobile/alipassapp/ui/common/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

.field final synthetic b:Landroid/view/View$OnClickListener;

.field final synthetic c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field final synthetic d:Lcom/alipay/mobile/alipassapp/ui/common/k;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/k;Lcom/alipay/mobile/framework/app/ui/BaseActivity;Landroid/view/View$OnClickListener;Lcom/alipay/mobile/commonui/widget/APTitleBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/m;->d:Lcom/alipay/mobile/alipassapp/ui/common/k;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/common/m;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/ui/common/m;->b:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/alipay/mobile/alipassapp/ui/common/m;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/m;->a:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/m;->d:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/k;->d(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/m;->d:Lcom/alipay/mobile/alipassapp/ui/common/k;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/m;->d:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/common/k;->a(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/alipassapp/R$layout;->alipass_network_error_view:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/k;->a(Lcom/alipay/mobile/alipassapp/ui/common/k;Landroid/view/View;)Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/m;->d:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/k;->d(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->asset_flowtipview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$string;->flow_network_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$string;->tryAgin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/alipassapp/ui/common/n;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/alipassapp/ui/common/n;-><init>(Lcom/alipay/mobile/alipassapp/ui/common/m;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/m;->d:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/k;->d(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/common/m;->c:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getHeight()I

    move-result v2

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/m;->d:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/k;->d(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/common/m;->d:Lcom/alipay/mobile/alipassapp/ui/common/k;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/common/k;->d(Lcom/alipay/mobile/alipassapp/ui/common/k;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

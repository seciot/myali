.class final Lcom/alipay/mobile/alipassapp/viewcontrol/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/viewcontrol/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/g;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/g;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/e;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->d(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/g;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/e;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/g;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/e;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$id;->backview_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->setSelection(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/g;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/e;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/g;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/e;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->a:Landroid/content/Context;

    sget v1, Lcom/alipay/mobile/alipassapp/R$anim;->alipass_detail_backview_top_show:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/g;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/viewcontrol/e;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->layout_backview_top_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/g;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;

    iget-object v1, v1, Lcom/alipay/mobile/alipassapp/viewcontrol/e;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$id;->layout_backview_top_back:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

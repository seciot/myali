.class final Lcom/alipay/mobile/alipassapp/viewcontrol/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/viewcontrol/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/f;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/f;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/e;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->d(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/f;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/e;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->e(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Lcom/alipay/mobile/commonui/widget/APImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/f;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/e;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->f(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/f;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/e;

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/viewcontrol/e;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->b(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

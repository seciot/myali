.class final Lcom/alipay/mobile/alipassapp/viewcontrol/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/h;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/h;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/alipassapp/viewcontrol/j;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/viewcontrol/j;-><init>(Lcom/alipay/mobile/alipassapp/viewcontrol/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/h;->a:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/alipassapp/viewcontrol/i;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/viewcontrol/i;-><init>(Lcom/alipay/mobile/alipassapp/viewcontrol/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

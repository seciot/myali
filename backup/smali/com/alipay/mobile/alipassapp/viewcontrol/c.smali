.class final Lcom/alipay/mobile/alipassapp/viewcontrol/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field final synthetic c:Lcom/alipay/mobile/alipassapp/viewcontrol/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/viewcontrol/a;ZLcom/alipay/mobile/commonui/widget/APTitleBar;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/c;->c:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    iput-boolean p2, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/c;->a:Z

    iput-object p3, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/c;->b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/viewcontrol/c;->c:Lcom/alipay/mobile/alipassapp/viewcontrol/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/viewcontrol/a;->c(Lcom/alipay/mobile/alipassapp/viewcontrol/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/alipassapp/viewcontrol/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/viewcontrol/d;-><init>(Lcom/alipay/mobile/alipassapp/viewcontrol/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.class final Lcom/alipay/android/launcher/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/alipay/android/launcher/TabLauncher;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;ZLandroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/launcher/g;->c:Lcom/alipay/android/launcher/TabLauncher;

    iput-boolean p2, p0, Lcom/alipay/android/launcher/g;->a:Z

    iput-object p3, p0, Lcom/alipay/android/launcher/g;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureResult(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/android/launcher/g;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedNotifyCallBack(Z)V

    iget-object v0, p0, Lcom/alipay/android/launcher/g;->c:Lcom/alipay/android/launcher/TabLauncher;

    iget-object v1, p0, Lcom/alipay/android/launcher/g;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/alipay/android/launcher/TabLauncher;->a(Lcom/alipay/android/launcher/TabLauncher;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

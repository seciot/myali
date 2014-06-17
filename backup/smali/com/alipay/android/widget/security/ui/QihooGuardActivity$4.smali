.class Lcom/alipay/android/widget/security/ui/QihooGuardActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$4;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$4;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->d(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->waitForConnecting(Landroid/os/Handler;)V

    return-void
.end method

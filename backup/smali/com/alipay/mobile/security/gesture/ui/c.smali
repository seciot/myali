.class final Lcom/alipay/mobile/security/gesture/ui/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/gesture/component/k;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/c;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZZZ)V
    .locals 2

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/c;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->d(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/c;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->b:Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setHasGestureView(Z)V

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/c;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->e(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/c;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->f(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/c;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->g(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    goto :goto_0
.end method

.class final Lcom/alipay/mobile/security/gesture/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/a;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/a;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/ui/a;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Ljava/lang/String;)V

    return-void
.end method

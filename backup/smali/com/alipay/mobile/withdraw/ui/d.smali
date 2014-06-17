.class final Lcom/alipay/mobile/withdraw/ui/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/ui/d;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/d;->a:Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;

    invoke-static {v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->r(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000033"

    const-string/jumbo v2, "20000013"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

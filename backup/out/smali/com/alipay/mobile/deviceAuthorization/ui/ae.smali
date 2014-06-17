.class final Lcom/alipay/mobile/deviceAuthorization/ui/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ae;->a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ae;->a:Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/LoginLogsActivity;->finish()V

    return-void
.end method

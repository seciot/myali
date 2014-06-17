.class final Lcom/alipay/mobile/deviceAuthorization/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/f;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/f;->a:Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/AuthorizeLogsActivity;->finish()V

    return-void
.end method

.class final Lcom/alipay/mobile/deviceAuthorization/ui/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/k;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/k;->a:Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

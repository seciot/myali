.class final Lcom/alipay/mobile/deviceAuthorization/ui/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ax;->a:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ax;->a:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->finish()V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ax;->a:Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/TempAuthActivity;->a()V

    return-void
.end method

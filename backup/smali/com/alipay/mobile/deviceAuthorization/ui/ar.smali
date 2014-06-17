.class final Lcom/alipay/mobile/deviceAuthorization/ui/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ar;->a:Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ar;->a:Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;->finish()V

    return-void
.end method

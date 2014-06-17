.class final Lcom/alipay/mobile/security/devicemanage/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/security/devicemanage/ui/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/devicemanage/ui/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/devicemanage/ui/b;->b:Lcom/alipay/mobile/security/devicemanage/ui/a;

    iput p2, p0, Lcom/alipay/mobile/security/devicemanage/ui/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/b;->b:Lcom/alipay/mobile/security/devicemanage/ui/a;

    iget-object v0, v0, Lcom/alipay/mobile/security/devicemanage/ui/a;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/b;->b:Lcom/alipay/mobile/security/devicemanage/ui/a;

    iget-object v1, v1, Lcom/alipay/mobile/security/devicemanage/ui/a;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bl:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->showProgressDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/b;->b:Lcom/alipay/mobile/security/devicemanage/ui/a;

    iget-object v0, v0, Lcom/alipay/mobile/security/devicemanage/ui/a;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;

    iget v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/b;->a:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;I)I

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/b;->b:Lcom/alipay/mobile/security/devicemanage/ui/a;

    iget-object v1, v0, Lcom/alipay/mobile/security/devicemanage/ui/a;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/b;->b:Lcom/alipay/mobile/security/devicemanage/ui/a;

    iget-object v0, v0, Lcom/alipay/mobile/security/devicemanage/ui/a;->a:Ljava/util/List;

    iget v2, p0, Lcom/alipay/mobile/security/devicemanage/ui/b;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;->tid:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/devicemanage/ui/b;->b:Lcom/alipay/mobile/security/devicemanage/ui/a;

    iget-object v2, v2, Lcom/alipay/mobile/security/devicemanage/ui/a;->a:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

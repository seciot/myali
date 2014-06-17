.class final Lcom/alipay/mobile/security/devicemanage/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/devicemanage/ui/a;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;

    iput-object p2, p0, Lcom/alipay/mobile/security/devicemanage/ui/a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v4, 0x0

    add-int/lit8 v2, p3, -0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/a;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;)Lcom/alipay/mobile/security/tid/TidGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/a;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->b(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;)Lcom/alipay/mobile/security/devicemanage/b/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/devicemanage/b/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;

    if-nez v0, :cond_3

    :cond_0
    :goto_1
    return v4

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/a;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;)Lcom/alipay/mobile/security/tid/TidGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/devicemanage/ui/a;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->a(Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;)Lcom/alipay/mobile/security/tid/TidGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lcom/alipay/mobilesecurity/core/model/account/device/DeviceInfo;->tid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/a;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/a;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bn:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/a;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->af:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/alipay/mobile/security/devicemanage/ui/b;

    invoke-direct {v3, p0, v2}, Lcom/alipay/mobile/security/devicemanage/ui/b;-><init>(Lcom/alipay/mobile/security/devicemanage/ui/a;I)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/security/devicemanage/ui/a;->b:Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/devicemanage/ui/DeviceManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->Z:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

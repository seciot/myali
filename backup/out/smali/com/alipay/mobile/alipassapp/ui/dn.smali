.class final Lcom/alipay/mobile/alipassapp/ui/dn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/dn;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/dn;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;

    const-string/jumbo v1, "getCard"

    invoke-virtual {v0, v2, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dn;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;

    const-class v2, Lcom/alipay/mobile/alipassapp/ui/MemberCardObtainableListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/dn;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->b(Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/dn;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->a(Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    return-void
.end method

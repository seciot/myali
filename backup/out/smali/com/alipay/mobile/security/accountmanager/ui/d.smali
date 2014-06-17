.class final Lcom/alipay/mobile/security/accountmanager/ui/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/ui/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/d;->b:Lcom/alipay/mobile/security/accountmanager/ui/c;

    iput p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/d;->b:Lcom/alipay/mobile/security/accountmanager/ui/c;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/c;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    iget v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/d;->a:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;I)I

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/d;->b:Lcom/alipay/mobile/security/accountmanager/ui/c;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/c;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/d;->b:Lcom/alipay/mobile/security/accountmanager/ui/c;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/c;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bl:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->showProgressDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/d;->b:Lcom/alipay/mobile/security/accountmanager/ui/c;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/c;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    iget v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/d;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/d;->b:Lcom/alipay/mobile/security/accountmanager/ui/c;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/c;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->g:Ljava/util/List;

    iget v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/d;->a:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/d;->b:Lcom/alipay/mobile/security/accountmanager/ui/c;

    iget-object v2, v2, Lcom/alipay/mobile/security/accountmanager/ui/c;->a:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;

    invoke-virtual {v2, v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

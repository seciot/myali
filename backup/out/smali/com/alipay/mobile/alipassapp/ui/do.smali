.class final Lcom/alipay/mobile/alipassapp/ui/do;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/do;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/do;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;

    const-string/jumbo v1, "invalid"

    invoke-virtual {v0, v2, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/do;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->d(Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/do;->a:Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;->c(Lcom/alipay/mobile/alipassapp/ui/MemberCardCurrentListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/alipassapp/ui/MemberCardPastListActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    return-void
.end method

.class final Lcom/alipay/mobile/security/accountmanager/ui/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/m;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/security/accountmanager/ui/m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/m;->c:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/m;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;->a(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

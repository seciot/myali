.class final Lcom/alipay/mobile/security/accountmanager/ui/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/k;->c:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;

    iput p2, p0, Lcom/alipay/mobile/security/accountmanager/ui/k;->a:I

    iput-object p3, p0, Lcom/alipay/mobile/security/accountmanager/ui/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/k;->c:Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;

    iget v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/k;->a:I

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/k;->b:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;->a(Lcom/alipay/mobile/security/accountmanager/ui/AccountManagerActivity_;ILjava/lang/Object;)V

    return-void
.end method

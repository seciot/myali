.class final Lcom/taobao/securityjni/GlobalInit$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/ContextWrapper;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/taobao/securityjni/GlobalInit$b;->b:Z

    iput-boolean v0, p0, Lcom/taobao/securityjni/GlobalInit$b;->c:Z

    iput-object p1, p0, Lcom/taobao/securityjni/GlobalInit$b;->a:Landroid/content/ContextWrapper;

    iput-boolean p2, p0, Lcom/taobao/securityjni/GlobalInit$b;->b:Z

    iput-boolean p3, p0, Lcom/taobao/securityjni/GlobalInit$b;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/taobao/securityjni/GlobalInit$b;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/taobao/securityjni/StaticDataStore;

    iget-object v1, p0, Lcom/taobao/securityjni/GlobalInit$b;->a:Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Lcom/taobao/securityjni/StaticDataStore;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0}, Lcom/taobao/securityjni/StaticDataStore;->getAppKey()Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lcom/taobao/securityjni/GlobalInit$b;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/securityjni/GlobalInit$b;->a:Landroid/content/ContextWrapper;

    iget-boolean v1, p0, Lcom/taobao/securityjni/GlobalInit$b;->b:Z

    #calls: Lcom/taobao/securityjni/GlobalInit;->GlobalSecurityInitJava(Landroid/content/ContextWrapper;Z)V
    invoke-static {v0, v1}, Lcom/taobao/securityjni/GlobalInit;->access$600(Landroid/content/ContextWrapper;Z)V

    :cond_1
    return-void
.end method

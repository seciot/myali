.class final Lcom/alipay/android/launcher/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/launcher/TabLauncher;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/launcher/c;->b:Lcom/alipay/android/launcher/TabLauncher;

    iput-boolean p2, p0, Lcom/alipay/android/launcher/c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/launcher/c;->b:Lcom/alipay/android/launcher/TabLauncher;

    iget-boolean v1, p0, Lcom/alipay/android/launcher/c;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/android/launcher/TabLauncher;->a(Lcom/alipay/android/launcher/TabLauncher;Z)V

    return-void
.end method

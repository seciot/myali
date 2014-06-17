.class public final Lcom/alipay/mobile/about/ui/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/about/ui/b/b;->d:Landroid/view/View;

    iput-wide p1, p0, Lcom/alipay/mobile/about/ui/b/b;->a:J

    iput-object p3, p0, Lcom/alipay/mobile/about/ui/b/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/ui/b/b;->d:Landroid/view/View;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/about/ui/b/b;->c:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/about/ui/b/b;->c:Z

    return v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/about/ui/b/b;->d:Landroid/view/View;

    return-object v0
.end method

.class public final Lcom/alipay/b/c/a;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/alipay/b/c/a;


# instance fields
.field public a:Z

.field private b:Lcom/alipay/b/c/b;

.field private c:Landroid/content/Context;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/b/c/a;->d:Lcom/alipay/b/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/b/c/a;->b:Lcom/alipay/b/c/b;

    iput-object v1, p0, Lcom/alipay/b/c/a;->c:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/alipay/b/c/a;->a:Z

    iput-boolean v0, p0, Lcom/alipay/b/c/a;->e:Z

    return-void
.end method

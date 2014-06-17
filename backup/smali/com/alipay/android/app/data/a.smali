.class final Lcom/alipay/android/app/data/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/aspect/Advice;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/data/BizDataSource;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/data/BizDataSource;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/data/a;->a:Lcom/alipay/android/app/data/BizDataSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/data/a;->a:Lcom/alipay/android/app/data/BizDataSource;

    invoke-static {v0}, Lcom/alipay/android/app/data/BizDataSource;->a(Lcom/alipay/android/app/data/BizDataSource;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.class public Lcom/taobao/android/sso/internal/PidGetterService;
.super Landroid/app/Service;


# static fields
.field public static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/taobao/android/sso/internal/c;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Z

.field public static c:Z


# instance fields
.field private d:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/taobao/android/sso/internal/PidGetterService;->a:Landroid/util/SparseArray;

    sput-boolean v1, Lcom/taobao/android/sso/internal/PidGetterService;->b:Z

    sput-boolean v1, Lcom/taobao/android/sso/internal/PidGetterService;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/taobao/android/sso/internal/PidGetterService;->d:Landroid/os/IBinder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/taobao/android/sso/internal/PidGetterService$PidGetter;

    invoke-direct {v0, p0}, Lcom/taobao/android/sso/internal/PidGetterService$PidGetter;-><init>(Lcom/taobao/android/sso/internal/PidGetterService;)V

    iput-object v0, p0, Lcom/taobao/android/sso/internal/PidGetterService;->d:Landroid/os/IBinder;

    :cond_0
    iget-object v0, p0, Lcom/taobao/android/sso/internal/PidGetterService;->d:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.class public Lcom/androidquery/callback/ImageOptions;
.super Ljava/lang/Object;


# instance fields
.field public anchor:F

.field public animation:I

.field public fallback:I

.field public fileCache:Z

.field public memCache:Z

.field public policy:I

.field public preset:Landroid/graphics/Bitmap;

.field public ratio:F

.field public round:I

.field public targetWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/androidquery/callback/ImageOptions;->memCache:Z

    iput-boolean v0, p0, Lcom/androidquery/callback/ImageOptions;->fileCache:Z

    const v0, 0x7f7fffff

    iput v0, p0, Lcom/androidquery/callback/ImageOptions;->anchor:F

    return-void
.end method

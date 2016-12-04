# `aio.h` - asynchronous input and output

<!-- POSIX -->

### Structures

```c
aiocb
```

### Constants

```c
AIO_ALLDONE
AIO_CANCELED
AIO_NOTCANCELED
LIO_NOP
LIO_NOWAIT
LIO_READ
LIO_WAIT
LIO_WRITE
```

### Functions / Macros

```c
int      aio_cancel(int, struct aiocb *);
int      aio_error(const struct aiocb *);
int      aio_fsync(int, struct aiocb *);
int      aio_read(struct aiocb *);
ssize_t  aio_return(struct aiocb *);
int      aio_suspend(const struct aiocb *const [], int, const struct timespec *);
int      aio_write(struct aiocb *);
int      lio_listio(int, struct aiocb *restrict const [restrict], int, struct sigevent *restrict);
```

---

# `arpa/inet.h` - definitions for internet operations

<!-- POSIX -->

### Functions / Macros

```c
uint32_t     htonl(uint32_t);
uint16_t     htons(uint16_t);
uint32_t     ntohl(uint32_t);
uint16_t     ntohs(uint16_t);
in_addr_t    inet_addr(const char *);
char        *inet_ntoa(struct in_addr);
const char  *inet_ntop(int, const void *restrict, char *restrict, socklen_t);
int          inet_pton(int, const char *restrict, void *restrict);
```

---

# `assert.h` - verify program assertion

<!-- CLIB -->

### Constants

```c
NDEBUG
```

### Functions / Macros

```c
#define assert(ignore)((void) 0)
#define static_assert _Static_assert
```

---

# `complex.h` - complex arithmetic

<!-- CLIB -->

### Types

```c
complex
imaginary
```

### Constants

```c
I
_Imaginary_I
_Complex_I
```

### Functions / Macros

```c
#define              CMPLX(__real,__imag)
#define              CMPLXF(__real,__imag)
#define              CMPLXL(__real,__imag)
double               cabs(double complex);
float                cabsf(float complex);
long double          cabsl(long double complex);
double complex       cacos(double complex);
float complex        cacosf(float complex);
double complex       cacosh(double complex);
float complex        cacoshf(float complex);
long double complex  cacoshl(long double complex);
long double complex  cacosl(long double complex);
double               carg(double complex);
float                cargf(float complex);
long double          cargl(long double complex);
double complex       casin(double complex);
float complex        casinf(float complex);
double complex       casinh(double complex);
float complex        casinhf(float complex);
long double complex  casinhl(long double complex);
long double complex  casinl(long double complex);
double complex       catan(double complex);
float complex        catanf(float complex);
double complex       catanh(double complex);
float complex        catanhf(float complex);
long double complex  catanhl(long double complex);
long double complex  catanl(long double complex);
double complex       ccos(double complex);
float complex        ccosf(float complex);
double complex       ccosh(double complex);
float complex        ccoshf(float complex);
long double complex  ccoshl(long double complex);
long double complex  ccosl(long double complex);
double complex       cexp(double complex);
float complex        cexpf(float complex);
long double complex  cexpl(long double complex);
double               cimag(double complex);
float                cimagf(float complex);
long double          cimagl(long double complex);
double complex       clog(double complex);
float complex        clogf(float complex);
long double complex  clogl(long double complex);
double complex       conj(double complex);
float complex        conjf(float complex);
long double complex  conjl(long double complex);
double complex       cpow(double complex, double complex);
float complex        cpowf(float complex, float complex);
long double complex  cpowl(long double complex, long double complex);
double complex       cproj(double complex);
float complex        cprojf(float complex);
long double complex  cprojl(long double complex);
double               creal(double complex);
float                crealf(float complex);
long double          creall(long double complex);
double complex       csin(double complex);
float complex        csinf(float complex);
double complex       csinh(double complex);
float complex        csinhf(float complex);
long double complex  csinhl(long double complex);
long double complex  csinl(long double complex);
double complex       csqrt(double complex);
float complex        csqrtf(float complex);
long double complex  csqrtl(long double complex);
double complex       ctan(double complex);
float complex        ctanf(float complex);
double complex       ctanh(double complex);
float complex        ctanhf(float complex);
long double complex  ctanhl(long double complex);
long double complex  ctanl(long double complex);
```

---

# `cpio.h` - cpio archive values

<!-- POSIX -->

### Constants

```c
C_ISSOCK
C_ISLNK
C_ISCTG
C_ISREG
C_ISBLK
C_ISDIR
C_ISCHR
C_ISFIFO
C_ISUID
C_ISGID
C_ISVTX
C_IRUSR
C_IWUSR
C_IXUSR
C_IRGRP
C_IWGRP
C_IXGRP
C_IROTH
C_IWOTH
C_IXOTH
MAGIC
```

---

# `ctype.h` - character types

<!-- CLIB -->

### Functions / Macros

```c
int   isalnum(int);
int   isalnum_l(int, locale_t);
int   isalpha(int);
int   isalpha_l(int, locale_t);
int   isascii(int);
int   isblank(int);
int   isblank_l(int, locale_t);
int   iscntrl(int);
int   iscntrl_l(int, locale_t);
int   isdigit(int);
int   isdigit_l(int, locale_t);
int   isgraph(int);
int   isgraph_l(int, locale_t);
int   islower(int);
int   islower_l(int, locale_t);
int   isprint(int);
int   isprint_l(int, locale_t);
int   ispunct(int);
int   ispunct_l(int, locale_t);
int   isspace(int);
int   isspace_l(int, locale_t);
int   isupper(int);
int   isupper_l(int, locale_t);
int   isxdigit(int);
int   isxdigit_l(int, locale_t);
int   toascii(int);
int   tolower(int);
int   tolower_l(int, locale_t);
int   toupper(int);
int   toupper_l(int, locale_t);
int   _toupper(int);
int   _tolower(int);
```

---

# `dirent.h` - format of directory entries

<!-- POSIX -->

### Structures

```c
dirent
```

### Types

```c
DIR
```

### Functions / Macros

```c
int            alphasort(const struct dirent **, const struct dirent **);
int            closedir(DIR *);
int            dirfd(DIR *);
DIR           *fdopendir(int);
DIR           *opendir(const char *);
struct dirent *readdir(DIR *);
int            readdir_r(DIR *restrict, struct dirent *restrict, struct dirent **restrict);
void           rewinddir(DIR *);
int            scandir(const char *, struct dirent ***, int (*)(const struct dirent *),
                   int (*)(const struct dirent **, const struct dirent **));
void           seekdir(DIR *, long);
long           telldir(DIR *);
```

---

# `dlfcn.h` - dynamic linking

<!-- POSIX -->

### Constants

```c
RTLD_LAZY
RTLD_NOW
RTLD_GLOBAL
RTLD_LOCAL
```

### Functions  / Macros

```c
int    dlclose(void *);
char  *dlerror(void);
void  *dlopen(const char *, int);
void  *dlsym(void *restrict, const char *restrict);
```

---

# `errno.h` - system error numbers

<!-- CLIB -->

### Variables

```c
errno
```

### Constants

```c
E2BIG
EACCES
EADDRINUSE
EADDRNOTAVAIL
EAFNOSUPPORT
EAGAIN
EALREADY
EBADF
EBADMSG
EBUSY
ECANCELED
ECHILD
ECONNABORTED
ECONNREFUSED
ECONNRESET
EDEADLK
EDESTADDRREQ
EDOM
EDQUOT
EEXIST
EFAULT
EFBIG
EHOSTUNREACH
EIDRM
EILSEQ
EINPROGRESS
EINTR
EINVAL
EIO
EISCONN
EISDIR
ELOOP
EMFILE
EMLINK
EMSGSIZE
EMULTIHOP
ENAMETOOLONG
ENETDOWN
ENETRESET
ENETUNREACH
ENFILE
ENOBUFS
ENODATA
ENODEV
ENOENT
ENOEXEC
ENOLCK
ENOLINK
ENOMEM
ENOMSG
ENOPROTOOPT
ENOSPC
ENOSR
ENOSTR
ENOSYS
ENOTCONN
ENOTDIR
ENOTEMPTY
ENOTRECOVERABLE
ENOTSOCK
ENOTSUP
ENOTTY
ENXIO
EOPNOTSUPP
EOVERFLOW
EOWNERDEAD
EPERM
EPIPE
EPROTO
EPROTONOSUPPORT
EPROTOTYPE
ERANGE
EROFS
ESPIPE
ESRCH
ESTALE
ETIME
ETIMEDOUT
ETXTBSY
EWOULDBLOCK
EXDEV
```

---

# `fcntl.h` - file control options

<!-- POSIX -->

### Structures

```c
flock
```

### Types

```c
fcodeblobs_t
fsignatures_t
fstore_t
fbootstraptransfer_t
filesec_property_t
```

### Constants

```c
F_DUPFD
F_DUPFD_CLOEXEC
F_GETFD
F_SETFD
F_GETFL
F_SETFL
F_GETLK
F_SETLK
F_SETLKW
F_GETOWN
F_SETOWN
FD_CLOEXEC
F_RDLCK
F_UNLCK
F_WRLCK
O_CLOEXEC
O_CREAT
O_DIRECTORY
O_EXCL
O_NOCTTY
O_NOFOLLOW
O_TRUNC
O_TTY_INIT
O_APPEND
O_DSYNC
O_NONBLOCK
O_RSYNC
O_SYNC
O_ACCMODE
O_EXEC
O_RDONLY
O_RDWR
O_SEARCH
O_WRONLY
AT_FDCWD
AT_EACCESS
AT_SYMLINK_NOFOLLOW
AT_SYMLINK_FOLLOW
AT_REMOVEDIR
POSIX_FADV_DONTNEED
POSIX_FADV_NOREUSE
POSIX_FADV_NORMAL
POSIX_FADV_RANDOM
POSIX_FADV_SEQUENTIAL
POSIX_FADV_WILLNEED
```

### Functions / Macros

```c
int  creat(const char *, mode_t);
int  fcntl(int, int, ...);
int  open(const char *, int, ...);
int  openat(int, const char *, int, ...);
int  posix_fadvise(int, off_t, off_t, int);
int  posix_fallocate(int, off_t, off_t);
```

---

# `fenv.h` - floating-point environment

<!-- CLIB -->

### Types

```c
fenv_t
fexcept_t
```

### Constants

```c
FE_DIVBYZERO
FE_INEXACT
FE_INVALID
FE_OVERFLOW
FE_UNDERFLOW
FE_ALL_EXCEPT
FE_DOWNWARD
FE_TONEAREST
FE_TOWARDZERO
FE_UPWARD
FE_DFL_ENV
```

### Functions / Macros

```c
int  feclearexcept(int);
int  fegetenv(fenv_t *);
int  fegetexceptflag(fexcept_t *, int);
int  fegetround(void);
int  feholdexcept(fenv_t *);
int  feraiseexcept(int);
int  fesetenv(const fenv_t *);
int  fesetexceptflag(const fexcept_t *, int);
int  fesetround(int);
int  fetestexcept(int);
int  feupdateenv(const fenv_t *);
```

---

# `float.h` - floating types

<!-- CLIB -->

### Constants

```c
FLT_RADIX
FLT_MANT_DIG
DBL_MANT_DIG
LDBL_MANT_DIG
DECIMAL_DIG
FLT_DIG
DBL_DIG
LDBL_DIG
FLT_MIN_EXP
DBL_MIN_EXP
LDBL_MIN_EXP
FLT_MIN_10_EXP
DBL_MIN_10_EXP
LDBL_MIN_10_EXP
FLT_MAX_EXP
DBL_MAX_EXP
LDBL_MAX_EXP
FLT_MAX_10_EXP
DBL_MAX_10_EXP
LDBL_MAX_10_EXP
FLT_MAX
DBL_MAX
LDBL_MAX
FLT_EPSILON
DBL_EPSILON
LDBL_EPSILON
FLT_MIN
DBL_MIN
LDBL_MIN
FLT_ROUNDS
FLT_EVAL_METHOD
FLT_HAS_SUBNORM
DBL_HAS_SUBNORM
LDBL_HAS_SUBNORM
```

---

# `fmtmsg.h` - message display structures

<!-- POSIX -->

### Constants

```c
MM_HARD
MM_SOFT
MM_FIRM
MM_APPL
MM_UTIL
MM_OPSYS
MM_RECOVER
MM_NRECOV
MM_HALT
MM_ERROR
MM_WARNING
MM_INFO
MM_NOSEV
MM_PRINT
MM_CONSOLE
MM_OK
MM_NOTOK
MM_NOMSG
MM_NOCON
```

### Functions

```c
int fmtmsg(long, const char *, int, const char *, const char *, const char *);
```

---

# `fnmatch.h` - filename-matching types

<!-- POSIX -->

### Constants

```c
FNM_NOMATCH
FNM_PATHNAME
FNM_PERIOD
FNM_NOESCAPE
```

### Functions

```c
int fnmatch(const char *, const char *, int);
```

---

# `ftw.h` - file tree traversal

<!-- POSIX -->

### Structures

```c
stat
```

### Types

```c
FTW
```

### Constants

```c
FTW_F
FTW_D
FTW_DNR
FTW_DP
FTW_NS
FTW_SL
FTW_SLN
FTW_PHYS
FTW_MOUNT
FTW_DEPTH
FTW_CHDIR
```

### Functions

```c
int ftw(const char *, int (*)(const char *, const struct stat *, int), int);
int nftw(const char *, int (*)(const char *, const struct stat *, int, struct FTW *), int, int);
```

---

# `glob.h` - pathname pattern-matching types

<!-- POSIX -->

### Types

```c
glob_t
```

### Constants

```c
GLOB_APPEND
GLOB_DOOFFS
GLOB_ERR
GLOB_MARK
GLOB_NOCHECK
GLOB_NOESCAPE
GLOB_NOSORT
GLOB_ABORTED
GLOB_NOMATCH
GLOB_NOSPACE
```

### Functions

```c
int  glob(const char *restrict, int, int(*)(const char *, int), glob_t *restrict);
void globfree(glob_t *);
```

---

# `grp.h` - group structure

<!-- POSIX -->

### Structures

```c
group
```

### Functions

```c
void           endgrent(void);
struct group  *getgrent(void);
struct group  *getgrgid(gid_t);
int            getgrgid_r(gid_t, struct group *, char *, size_t, struct group **);
struct group  *getgrnam(const char *);
int            getgrnam_r(const char *, struct group *, char *, size_t , struct group **);
void           setgrent(void);
```

---

# `iconv.h` - codeset conversion facility

<!-- POSIX -->

### Types

```c
iconv_t
```

### Functions

```c
size_t  iconv(iconv_t, char **restrict, size_t *restrict, char **restrict, size_t *restrict);
int     iconv_close(iconv_t);
iconv_t iconv_open(const char *, const char *);
```

---

# `inttypes.h` - fixed size integer types

<!-- CLIB -->

### Types

```c
imaxdiv_t
```

### Constants

```c
PRIdN           <-- where N is 8, 16, 32, or 64
PRIdLEASTN      <-- where N is 8, 16, 32, or 64
PRIdFASTN       <-- where N is 8, 16, 32, or 64
PRIdMAX
PRIdPTR
PRIiN           <-- where N is 8, 16, 32, or 64
PRIiLEASTN      <-- where N is 8, 16, 32, or 64
PRIiFASTN       <-- where N is 8, 16, 32, or 64
PRIiMAX
PRIiPTR
PRIoN           <-- where N is 8, 16, 32, or 64
PRIoLEASTN      <-- where N is 8, 16, 32, or 64
PRIoFASTN       <-- where N is 8, 16, 32, or 64
PRIoMAX
PRIoPTR
PRIuN           <-- where N is 8, 16, 32, or 64
PRIuLEASTN      <-- where N is 8, 16, 32, or 64
PRIuFASTN       <-- where N is 8, 16, 32, or 64
PRIuMAX
PRIuPTR
PRIxN           <-- where N is 8, 16, 32, or 64
PRIxLEASTN      <-- where N is 8, 16, 32, or 64
PRIxFASTN       <-- where N is 8, 16, 32, or 64
PRIxMAX
PRIxPTR
PRIXN           <-- where N is 8, 16, 32, or 64
PRIXLEASTN      <-- where N is 8, 16, 32, or 64
PRIXFASTN       <-- where N is 8, 16, 32, or 64
PRIXMAX
PRIXPTR
SCNdN           <-- where N is 8, 16, 32, or 64
SCNdLEASTN      <-- where N is 8, 16, 32, or 64
SCNdFASTN       <-- where N is 8, 16, 32, or 64
SCNdMAX
SCNdPTR         
SCNiN           <-- where N is 8, 16, 32, or 64
SCNiLEASTN      <-- where N is 8, 16, 32, or 64
SCNiFASTN       <-- where N is 8, 16, 32, or 64
SCNiMAX
SCNiPTR
SCNoN           <-- where N is 8, 16, 32, or 64
SCNoLEASTN      <-- where N is 8, 16, 32, or 64
SCNoFASTN       <-- where N is 8, 16, 32, or 64
SCNoMAX
SCNoPTR
SCNuN           <-- where N is 8, 16, 32, or 64
SCNuLEASTN      <-- where N is 8, 16, 32, or 64
SCNuFASTN       <-- where N is 8, 16, 32, or 64
SCNuMAX
SCNuPTR
SCNxN           <-- where N is 8, 16, 32, or 64
SCNxLEASTN      <-- where N is 8, 16, 32, or 64
SCNxFASTN       <-- where N is 8, 16, 32, or 64
SCNxMAX
SCNxPTR
```

### Functions

```c
intmax_t  imaxabs(intmax_t);
imaxdiv_t imaxdiv(intmax_t, intmax_t);
intmax_t  strtoimax(const char *restrict, char **restrict, int);
uintmax_t strtoumax(const char *restrict, char **restrict, int);
intmax_t  wcstoimax(const wchar_t *restrict, wchar_t **restrict, int);
uintmax_t wcstoumax(const wchar_t *restrict, wchar_t **restrict, int);
```

---

# `iso646.h` - alternative spellings

<!-- CLIB -->

### Constants

```c
and     // &&
and_eq  // &=
bitand  // &
bitor   // |
compl   // ˜
not     // !
not_eq  // !=
or      // ||
or_eq   // |=
xor     // ^
xor_eq  // ^=
```

---

# `langinfo.h` - language information constants

<!-- POSIX -->

### Constants

```c
CODESET
D_T_FMT
D_FMT
T_FMT
T_FMT_AMPM
AM_STR
PM_STR
DAY_1
DAY_2
DAY_3
DAY_4
DAY_5
DAY_6
DAY_7
ABDAY_1
ABDAY_2
ABDAY_3
ABDAY_4
ABDAY_5
ABDAY_6
ABDAY_7
MON_1
MON_2
MON_3
MON_4
MON_5
MON_6
MON_7
MON_8
MON_9
MON_10
MON_11
MON_12
ABMON_1
ABMON_2
ABMON_3
ABMON_4
ABMON_5
ABMON_6
ABMON_7
ABMON_8
ABMON_9
ABMON_10
ABMON_11
ABMON_12
ERA
ERA_D_FMT
ERA_D_T_FMT
ERA_T_FMT
ALT_DIGITS
RADIXCHAR
THOUSEP
YESEXPR
NOEXPR
CRNCYSTR
```

### Functions

```c
char *nl_langinfo(nl_item);
char *nl_langinfo_l(nl_item, locale_t);
```

---

# `libgen.h` - definitions for pattern matching functions

<!-- POSIX -->

### Functions

```c
char  *basename(char *);
char  *dirname(char *);
```

---

# `limits.h` - implementation-defined constants

<!-- CLIB -->

### Constants

```c
AIO_LISTIO_MAX
AIO_MAX
AIO_PRIO_DELTA_MAX
ARG_MAX
ATEXIT_MAX
BC_BASE_MAX
BC_DIM_MAX
BC_SCALE_MAX
BC_STRING_MAX
CHAR_BIT
CHAR_MAX
CHAR_MIN
CHARCLASS_NAME_MAX
CHILD_MAX
COLL_WEIGHTS_MAX
DELAYTIMER_MAX
EXPR_NEST_MAX
FILESIZEBITS
HOST_NAME_MAX
IOV_MAX
INT_MAX
INT_MIN
LINE_MAX
LINK_MAX
LLONG_MAX
LLONG_MIN
LOGIN_NAME_MAX
LONG_BIT
LONG_MAX
LONG_MIN
MAX_CANON
MAX_INPUT
MB_LEN_MAX
MQ_OPEN_MAX
MQ_PRIO_MAX
NAME_MAX
NGROUPS_MAX
NL_ARGMAX
NL_LANGMAX
NL_MSGMAX
NL_SETMAX
NL_TEXTMAX
NZERO
OPEN_MAX
PAGESIZE
PAGE_SIZE
PATH_MAX
PIPE_BUF
POSIX_ALLOC_SIZE_MIN
POSIX_REC_INCR_XFER_SIZE
POSIX_REC_MAX_XFER_SIZE
POSIX_REC_MIN_XFER_SIZE
POSIX_REC_XFER_ALIGN
POSIX_TRACE_UNNAMED_USER_EVENT
PTHREAD_DESTRUCTOR_ITERATIONS
PTHREAD_KEYS_MAX
PTHREAD_STACK_MIN
PTHREAD_THREADS_MAX
RE_DUP_MAX
RTSIG_MAX
SCHAR_MAX
SCHAR_MIN
SEM_NSEMS_MAX
SEM_VALUE_MAX
SHRT_MAX
SHRT_MIN
SIGQUEUE_MAX
SS_REPL_MAX
SSIZE_MAX
STREAM_MAX
SYMLINK_MAX
SYMLOOP_MAX
TIMER_MAX
TTY_NAME_MAX
TRACE_EVENT_NAME_MAX
TRACE_NAME_MAX
TRACE_SYS_MAX
TRACE_USER_EVENT_MAX
TZNAME_MAX
UCHAR_MAX
UINT_MAX
ULLONG_MAX
ULONG_MAX
USHRT_MAX
WORD_BIT
```

---

# `locale.h` - category macros

<!-- CLIB -->

### Structures

```c
lconv
```

### Types

```c
locale_t
```

### Constants

```c
LC_ALL
LC_ALL_MASK
LC_COLLATE
LC_COLLATE_MASK
LC_CTYPE
LC_CTYPE_MASK
LC_GLOBAL_LOCALE
LC_MESSAGES
LC_MESSAGES_MASK
LC_MONETARY
LC_MONETARY_MASK
LC_NUMERIC
LC_NUMERIC_MASK
LC_TIME 
LC_TIME_MASK
```

### Functions

```c
locale_t      duplocale(locale_t);
void          freelocale(locale_t);
struct lconv *localeconv(void);
locale_t      newlocale(int, const char *, locale_t);
char         *setlocale(int, const char *);
locale_t      uselocale (locale_t);
```

---

# `math.h` - mathematical declarations

<!-- CLIB -->

### Variables

```c
extern int signgam;
```

### Types

```c
float_t
double_t
```

### Constants

```c
FP_FAST_FMA
FP_FAST_FMAF
FP_FAST_FMAL
FP_ILOGB0
FP_ILOGBNAN
FP_INFINITE
FP_NAN
FP_NORMAL
FP_SUBNORMAL
FP_ZERO
HUGE_VAL
HUGE_VALF
HUGE_VALL
INFINITY
M_E
M_LOG2E
M_LOG10E
M_LN2
M_LN10
M_PI
M_PI_2
M_PI_4
M_1_PI
M_2_PI
M_2_SQRTPI
M_SQRT2
M_SQRT1_2
MATH_ERRNO
MATH_ERREXCEPT
MAXFLOAT
NAN
```

### Functions

```c
double      acos(double);
float       acosf(float);
double      acosh(double);
float       acoshf(float);
long double acoshl(long double);
long double acosl(long double);
double      asin(double);
float       asinf(float);
double      asinh(double);
float       asinhf(float);
long double asinhl(long double);
long double asinl(long double);
double      atan(double);
double      atan2(double, double);
float       atan2f(float, float);
long double atan2l(long double, long double);
float       atanf(float);
double      atanh(double);
float       atanhf(float);
long double atanhl(long double);
long double atanl(long double);
double      cbrt(double);
float       cbrtf(float);
long double cbrtl(long double);
double      ceil(double);
float       ceilf(float);
long double ceill(long double);
double      copysign(double, double);
float       copysignf(float, float);
long double copysignl(long double, long double);
double      cos(double);
float       cosf(float);
double      cosh(double);
float       coshf(float);
long double coshl(long double);
long double cosl(long double);
double      erf(double);
double      erfc(double);
float       erfcf(float);
long double erfcl(long double);
float       erff(float);
long double erfl(long double);
double      exp(double);
double      exp2(double);
float       exp2f(float);
long double exp2l(long double);
float       expf(float);
long double expl(long double);
double      expm1(double);
float       expm1f(float);
long double expm1l(long double);
double      fabs(double);
float       fabsf(float);
long double fabsl(long double);
double      fdim(double, double);
float       fdimf(float, float);
long double fdiml(long double, long double);
double      floor(double);
float       floorf(float);
long double floorl(long double);
double      fma(double, double, double);
float       fmaf(float, float, float);
long double fmal(long double, long double, long double);
double      fmax(double, double);
float       fmaxf(float, float);
long double fmaxl(long double, long double);
double      fmin(double, double);
float       fminf(float, float);
long double fminl(long double, long double);
double      fmod(double, double);
float       fmodf(float, float);
long double fmodl(long double, long double);
int         fpclassify(real-floating x);
double      frexp(double, int *);
float       frexpf(float, int *);
long double frexpl(long double, int *);
double      hypot(double, double);
float       hypotf(float, float);
long double hypotl(long double, long double);
int         ilogb(double);
int         ilogbf(float);
int         ilogbl(long double);
int         isfinite(real-floating x);
int         isgreater(real-floating x, real-floating y);
int         isgreaterequal(real-floating x, real-floating y);
int         isinf(real-floating x);
int         isless(real-floating x, real-floating y);
int         islessequal(real-floating x, real-floating y);
int         islessgreater(real-floating x, real-floating y);
int         isnan(real-floating x);
int         isnormal(real-floating x);
int         isunordered(real-floating x, real-floating y);
double      j0(double);
double      j1(double);
double      jn(int, double);
double      ldexp(double, int);
float       ldexpf(float, int);
long double ldexpl(long double, int);
double      lgamma(double);
float       lgammaf(float);
long double lgammal(long double);
long long   llrint(double);
long long   llrintf(float);
long long   llrintl(long double);
long long   llround(double);
long long   llroundf(float);
long long   llroundl(long double);
double      log(double);
double      log10(double);
float       log10f(float);
long double log10l(long double);
double      log1p(double);
float       log1pf(float);
long double log1pl(long double);
double      log2(double);
float       log2f(float);
long double log2l(long double);
double      logb(double);
float       logbf(float);
long double logbl(long double);
float       logf(float);
long double logl(long double);
long        lrint(double);
long        lrintf(float);
long        lrintl(long double);
long        lround(double);
long        lroundf(float);
long        lroundl(long double);
double      modf(double, double *);
float       modff(float, float *);
long double modfl(long double, long double *);
double      nan(const char *);
float       nanf(const char *);
long double nanl(const char *);
double      nearbyint(double);
float       nearbyintf(float);
long double nearbyintl(long double);
double      nextafter(double, double);
float       nextafterf(float, float);
long double nextafterl(long double, long double);
double      nexttoward(double, long double);
float       nexttowardf(float, long double);
long double nexttowardl(long double, long double);
double      pow(double, double);
float       powf(float, float);
long double powl(long double, long double);
double      remainder(double, double);
float       remainderf(float, float);
long double remainderl(long double, long double);
double      remquo(double, double, int *);
float       remquof(float, float, int *);
long double remquol(long double, long double, int *);
double      rint(double);
float       rintf(float);
long double rintl(long double);
double      round(double);
float       roundf(float);
long double roundl(long double);
double      scalbln(double, long);
float       scalblnf(float, long);
long double scalblnl(long double, long);
double      scalbn(double, int);
float       scalbnf(float, int);
long double scalbnl(long double, int);
int         signbit(real-floating x);
double      sin(double);
float       sinf(float);
double      sinh(double);
float       sinhf(float);
long double sinhl(long double);
long double sinl(long double);
double      sqrt(double);
float       sqrtf(float);
long double sqrtl(long double);
double      tan(double);
float       tanf(float);
double      tanh(double);
float       tanhf(float);
long double tanhl(long double);
long double tanl(long double);
double      tgamma(double);
float       tgammaf(float);
long double tgammal(long double);
double      trunc(double);
float       truncf(float);
long double truncl(long double);
double      y0(double);
double      y1(double);
double      yn(int, double);
```

---

# `monetary.h` - monetary types

<!-- POSIX -->

### Functions

```c
ssize_t  strfmon(char *restrict, size_t, const char *restrict, ...);
ssize_t  strfmon_l(char *restrict, size_t, locale_t, const char *restrict, ...);
```

---

# `mqueue.h` - message queues

<!-- POSIX -->

### Types

```c
mqd_t
```

### Structures

```c
mq_attr
```

### Functions

```c
int      mq_close(mqd_t);
int      mq_getattr(mqd_t, struct mq_attr *);
int      mq_notify(mqd_t, const struct sigevent *);
mqd_t    mq_open(const char *, int, ...);
ssize_t  mq_receive(mqd_t, char *, size_t, unsigned *);
int      mq_send(mqd_t, const char *, size_t, unsigned);
int      mq_setattr(mqd_t, const struct mq_attr *restrict, struct mq_attr *restrict);
ssize_t  mq_timedreceive(mqd_t, char *restrict, size_t, unsigned *restrict, const struct timespec *restrict);
int      mq_timedsend(mqd_t, const char *, size_t, unsigned, const struct timespec *);
int      mq_unlink(const char *);
```

---

# `ndbm.h` - definitions for ndbm database operations

<!-- POSIX -->

### Types

```c
datum
DBM
```

### Constants

```c
DBM_INSERT
DBM_REPLACE
```

### Functions

```c
int     dbm_clearerr(DBM *);
void    dbm_close(DBM *);
int     dbm_delete(DBM *, datum);
int     dbm_error(DBM *);
datum   dbm_fetch(DBM *, datum);
datum   dbm_firstkey(DBM *);
datum   dbm_nextkey(DBM *);
DBM    *dbm_open(const char *, int, mode_t);
int     dbm_store(DBM *, datum, datum, int);
```

---

# `net/if.h` - sockets local interfaces

<!-- POSIX -->

### Structures

```c
if_nameindex
```

### Constants

```c
IF_NAMESIZE
```

### Functions

```c
void                  if_freenameindex(struct if_nameindex *);
char                 *if_indextoname(unsigned, char *);
struct if_nameindex  *if_nameindex(void);
unsigned              if_nametoindex(const char *);
```

---

# `netdb.h` - definitions for network database operations

<!-- POSIX -->

### Structures

```c
hostent
netent
protoent
servent
addrinfo
```

### Constants

```c
IPPORT_RESERVED
AI_PASSIVE
AI_CANONNAME
AI_NUMERICHOST
AI_NUMERICSERV
AI_V4MAPPED
AI_ALL
AI_ADDRCONFIG
NI_NOFQDN
NI_NUMERICHOST
NI_NAMEREQD
NI_NUMERICSERV
NI_NUMERICSCOPE
NI_DGRAM
EAI_AGAIN
EAI_BADFLAGS
EAI_FAIL
EAI_FAMILY
EAI_MEMORY
EAI_NONAME
EAI_SERVICE
EAI_SOCKTYPE
EAI_SYSTEM
EAI_OVERFLOW
```

### Functions

```c
void              endhostent(void);
void              endnetent(void);
void              endprotoent(void);
void              endservent(void);
void              freeaddrinfo(struct addrinfo *);
const char       *gai_strerror(int);
int               getaddrinfo(const char *restrict, const char *restrict, const struct addrinfo *restrict,
                              struct addrinfo **restrict);
struct hostent   *gethostent(void);
int               getnameinfo(const struct sockaddr *restrict, socklen_t, char *restrict, socklen_t, 
                              char *restrict, socklen_t, int);
struct netent    *getnetbyaddr(uint32_t, int);
struct netent    *getnetbyname(const char *);
struct netent    *getnetent(void);
struct protoent  *getprotobyname(const char *);
struct protoent  *getprotobynumber(int);
struct protoent  *getprotoent(void);
struct servent   *getservbyname(const char *, const char *);
struct servent   *getservbyport(int, const char *);
struct servent   *getservent(void);
void              sethostent(int);
void              setnetent(int);
void              setprotoent(int);
void              setservent(int);
```

---

# `netinet/in.h` - Internet address family

<!-- POSIX -->

### Variables

```c
const struct in6_addr in6addr_any;
const struct in6_addr in6addr_loopback;
```

### Types

```c
in_port_t
in_addr_t
```

### Structures

```c
in_addr
sockaddr_in
in6_addr
sockaddr_in6
ipv6_mreq
```

### Constants

```c
IPPROTO_IP
IPPROTO_IPV6
IPPROTO_ICMP
IPPROTO_RAW
IPPROTO_TCP
IPPROTO_UDP
INADDR_ANY
INADDR_BROADCAST
INET_ADDRSTRLEN
INET6_ADDRSTRLEN
IPV6_JOIN_GROUP
IPV6_LEAVE_GROUP
IPV6_MULTICAST_HOPS
IPV6_MULTICAST_IF
IPV6_MULTICAST_LOOP
IPV6_UNICAST_HOPS
IPV6_V6ONLY
```

### Functions

```c
int IN6_IS_ADDR_UNSPECIFIED(const struct in6_addr *);
int IN6_IS_ADDR_LOOPBACK(const struct in6_addr *);
int IN6_IS_ADDR_MULTICAST(const struct in6_addr *);
int IN6_IS_ADDR_LINKLOCAL(const struct in6_addr *);
int IN6_IS_ADDR_SITELOCAL(const struct in6_addr *);
int IN6_IS_ADDR_V4MAPPED(const struct in6_addr *);
int IN6_IS_ADDR_V4COMPAT(const struct in6_addr *);
int IN6_IS_ADDR_MC_NODELOCAL(const struct in6_addr *);
int IN6_IS_ADDR_MC_LINKLOCAL(const struct in6_addr *);
int IN6_IS_ADDR_MC_SITELOCAL(const struct in6_addr *);
int IN6_IS_ADDR_MC_ORGLOCAL(const struct in6_addr *);
int IN6_IS_ADDR_MC_GLOBAL(const struct in6_addr *);
```

---

# `netinet/tcp.h` - definitions for TCP

<!-- POSIX -->

### Constants

```c
TCP_NODELAY
```

---

# `nl_types.h` - data types

<!-- POSIX -->

### Types

```c
nl_catd
nl_item
```

### Constants

```c
NL_SETD
NL_CAT_LOCALE
```

### Functions

```c
int       catclose(nl_catd);
char     *catgets(nl_catd, int, int, const char *);
nl_catd   catopen(const char *, int);
```

---

# `poll.h` - definitions for the `poll()` function

<!-- POSIX -->

### Structures

```c
pollfd
```

### Types

```c
nfds_t
```

### Constants

```c
POLLIN
POLLRDNORM
POLLRDBAND
POLLPRI
POLLOUT
POLLWRNORM
POLLWRBAND
POLLERR
POLLHUP
POLLNVAL
```

### Functions

```c
int   poll(struct pollfd [], nfds_t, int);
```

---

# `pthread.h` - threads

<!-- POSIX -->

### Constants

```c
PTHREAD_BARRIER_SERIAL_THREAD
PTHREAD_CANCEL_ASYNCHRONOUS
PTHREAD_CANCEL_ENABLE
PTHREAD_CANCEL_DEFERRED
PTHREAD_CANCEL_DISABLE
PTHREAD_CANCELED
PTHREAD_COND_INITIALIZER
PTHREAD_CREATE_DETACHED
PTHREAD_CREATE_JOINABLE
PTHREAD_EXPLICIT_SCHED
PTHREAD_INHERIT_SCHED
PTHREAD_MUTEX_DEFAULT
PTHREAD_MUTEX_ERRORCHECK
PTHREAD_MUTEX_INITIALIZER
PTHREAD_MUTEX_NORMAL
PTHREAD_MUTEX_RECURSIVE
PTHREAD_MUTEX_ROBUST
PTHREAD_MUTEX_STALLED
PTHREAD_ONCE_INIT
PTHREAD_PRIO_INHERIT
PTHREAD_PRIO_NONE
PTHREAD_PRIO_PROTECT
PTHREAD_PROCESS_SHARED
PTHREAD_PROCESS_PRIVATE
PTHREAD_RWLOCK_INITIALIZER
PTHREAD_SCOPE_PROCESS
PTHREAD_SCOPE_SYSTEM
```

### Functions

```c
int         pthread_atfork(void (*)(void), void (*)(void), void(*)(void));
int         pthread_attr_destroy(pthread_attr_t *);
int         pthread_attr_getdetachstate(const pthread_attr_t *, int *);
int         pthread_attr_getguardsize(const pthread_attr_t *restrict, size_t *restrict);
int         pthread_attr_getinheritsched(const pthread_attr_t *restrict, int *restrict);
int         pthread_attr_getschedparam(const pthread_attr_t *restrict, struct sched_param *restrict);
int         pthread_attr_getschedpolicy(const pthread_attr_t *restrict, int *restrict);
int         pthread_attr_getscope(const pthread_attr_t *restrict, int *restrict);
int         pthread_attr_getstack(const pthread_attr_t *restrict, void **restrict, size_t *restrict);
int         pthread_attr_getstacksize(const pthread_attr_t *restrict, size_t *restrict);
int         pthread_attr_init(pthread_attr_t *);
int         pthread_attr_setdetachstate(pthread_attr_t *, int);
int         pthread_attr_setguardsize(pthread_attr_t *, size_t);
int         pthread_attr_setinheritsched(pthread_attr_t *, int);
int         pthread_attr_setschedparam(pthread_attr_t *restrict, const struct sched_param *restrict);
int         pthread_attr_setschedpolicy(pthread_attr_t *, int);
int         pthread_attr_setscope(pthread_attr_t *, int);
int         pthread_attr_setstack(pthread_attr_t *, void *, size_t);
int         pthread_attr_setstacksize(pthread_attr_t *, size_t);
int         pthread_barrier_destroy(pthread_barrier_t *);
int         pthread_barrier_init(pthread_barrier_t *restrict, const pthread_barrierattr_t *restrict, unsigned);
int         pthread_barrier_wait(pthread_barrier_t *);
int         pthread_barrierattr_destroy(pthread_barrierattr_t *);
int         pthread_barrierattr_getpshared(const pthread_barrierattr_t *restrict, int *restrict);
int         pthread_barrierattr_init(pthread_barrierattr_t *);
int         pthread_barrierattr_setpshared(pthread_barrierattr_t *, int);
int         pthread_cancel(pthread_t);
void        pthread_cleanup_pop(int);
void        pthread_cleanup_push(void (*)(void*), void *);
int         pthread_cond_broadcast(pthread_cond_t *);
int         pthread_cond_destroy(pthread_cond_t *);
int         pthread_cond_init(pthread_cond_t *restrict, const pthread_condattr_t *restrict);
int         pthread_cond_signal(pthread_cond_t *);
int         pthread_cond_timedwait(pthread_cond_t *restrict, pthread_mutex_t *restrict, const struct timespec *restrict);
int         pthread_cond_wait(pthread_cond_t *restrict, pthread_mutex_t *restrict);
int         pthread_condattr_destroy(pthread_condattr_t *);
int         pthread_condattr_getclock(const pthread_condattr_t *restrict, clockid_t *restrict);
int         pthread_condattr_getpshared(const pthread_condattr_t *restrict, int *restrict);
int         pthread_condattr_init(pthread_condattr_t *);
int         pthread_condattr_setclock(pthread_condattr_t *, clockid_t);
int         pthread_condattr_setpshared(pthread_condattr_t *, int);
int         pthread_create(pthread_t *restrict, const pthread_attr_t *restrict, void *(*)(void*), void *restrict);
int         pthread_detach(pthread_t);
int         pthread_equal(pthread_t, pthread_t);
void        pthread_exit(void *);
int         pthread_getconcurrency(void);
int         pthread_getcpuclockid(pthread_t, clockid_t *);
int         pthread_getschedparam(pthread_t, int *restrict, struct sched_param *restrict);
void       *pthread_getspecific(pthread_key_t);
int         pthread_join(pthread_t, void **);
int         pthread_key_create(pthread_key_t *, void (*)(void*));
int         pthread_key_delete(pthread_key_t);
int         pthread_mutex_consistent(pthread_mutex_t *);
int         pthread_mutex_destroy(pthread_mutex_t *);
int         pthread_mutex_getprioceiling(const pthread_mutex_t *restrict, int *restrict);
int         pthread_mutex_init(pthread_mutex_t *restrict, const pthread_mutexattr_t *restrict);
int         pthread_mutex_lock(pthread_mutex_t *);
int         pthread_mutex_setprioceiling(pthread_mutex_t *restrict, int, int *restrict);
int         pthread_mutex_timedlock(pthread_mutex_t *restrict, const struct timespec *restrict);
int         pthread_mutex_trylock(pthread_mutex_t *);
int         pthread_mutex_unlock(pthread_mutex_t *);
int         pthread_mutexattr_destroy(pthread_mutexattr_t *);
int         pthread_mutexattr_getprioceiling( const pthread_mutexattr_t *restrict, int *restrict);
int         pthread_mutexattr_getprotocol(const pthread_mutexattr_t *restrict, int *restrict);
int         pthread_mutexattr_getpshared(const pthread_mutexattr_t *restrict, int *restrict);
int         pthread_mutexattr_getrobust(const pthread_mutexattr_t *restrict, int *restrict);
int         pthread_mutexattr_gettype(const pthread_mutexattr_t *restrict, int *restrict);
int         pthread_mutexattr_init(pthread_mutexattr_t *);
int         pthread_mutexattr_setprioceiling(pthread_mutexattr_t *, int);
int         pthread_mutexattr_setprotocol(pthread_mutexattr_t *, int);
int         pthread_mutexattr_setpshared(pthread_mutexattr_t *, int);
int         pthread_mutexattr_setrobust(pthread_mutexattr_t *, int);
int         pthread_mutexattr_settype(pthread_mutexattr_t *, int);
int         pthread_once(pthread_once_t *, void (*)(void));
int         pthread_rwlock_destroy(pthread_rwlock_t *);
int         pthread_rwlock_init(pthread_rwlock_t *restrict, const pthread_rwlockattr_t *restrict);
int         pthread_rwlock_rdlock(pthread_rwlock_t *);
int         pthread_rwlock_timedrdlock(pthread_rwlock_t *restrict, const struct timespec *restrict);
int         pthread_rwlock_timedwrlock(pthread_rwlock_t *restrict, const struct timespec *restrict);
int         pthread_rwlock_tryrdlock(pthread_rwlock_t *);
int         pthread_rwlock_trywrlock(pthread_rwlock_t *);
int         pthread_rwlock_unlock(pthread_rwlock_t *);
int         pthread_rwlock_wrlock(pthread_rwlock_t *);
int         pthread_rwlockattr_destroy(pthread_rwlockattr_t *);
int         pthread_rwlockattr_getpshared(const pthread_rwlockattr_t *restrict, int *restrict);
int         pthread_rwlockattr_init(pthread_rwlockattr_t *);
int         pthread_rwlockattr_setpshared(pthread_rwlockattr_t *, int);
pthread_t   pthread_self(void);
int         pthread_setcancelstate(int, int *);
int         pthread_setcanceltype(int, int *);
int         pthread_setconcurrency(int);
int         pthread_setschedparam(pthread_t, int, const struct sched_param *);
int         pthread_setschedprio(pthread_t, int);
int         pthread_setspecific(pthread_key_t, const void *);
int         pthread_spin_destroy(pthread_spinlock_t *);
int         pthread_spin_init(pthread_spinlock_t *, int);
int         pthread_spin_lock(pthread_spinlock_t *);
int         pthread_spin_trylock(pthread_spinlock_t *);
int         pthread_spin_unlock(pthread_spinlock_t *);
void        pthread_testcancel(void);
```

---

# `pwd.h` - password structure

<!-- POSIX -->

### Structures

```c
passwd
```

### Functions

```c
void           endpwent(void);
struct passwd *getpwent(void);
struct passwd *getpwnam(const char *);
int            getpwnam_r(const char *, struct passwd *, char *, size_t, struct passwd **);
struct passwd *getpwuid(uid_t);
int            getpwuid_r(uid_t, struct passwd *, char *, size_t, struct passwd **);
void           setpwent(void);
```

---

# `regex.h` - regular expression matching types

<!-- POSIX -->

### Types

```c
regex_t
regoff_t
regmatch_t
```

### Constants

```c
REG_EXTENDED
REG_ICASE
REG_NOSUB
REG_NEWLINE
REG_NOTBOL
REG_NOTEOL
REG_NOMATCH
REG_BADPAT
REG_ECOLLATE
REG_ECTYPE
REG_EESCAPE
REG_ESUBREG
REG_EBRACK
REG_EPAREN
REG_EBRACE
REG_BADBR
REG_ERANGE
REG_ESPACE
REG_BADRPT
```

### Functions

```c
int    regcomp(regex_t *restrict, const char *restrict, int);
size_t regerror(int, const regex_t *restrict, char *restrict, size_t);
int    regexec(const regex_t *restrict, const char *restrict, size_t, regmatch_t, int);
void   regfree(regex_t *);
```

---

# `sched.h` - execution scheduling

<!-- POSIX -->

### Structures

```c
sched_param
```

### Constants

```c
SCHED_FIFO
SCHED_RR
SCHED_SPORADIC
SCHED_OTHER
```

### Functions

```c
int    sched_get_priority_max(int);
int    sched_get_priority_min(int);
int    sched_getparam(pid_t, struct sched_param *);
int    sched_getscheduler(pid_t);
int    sched_rr_get_interval(pid_t, struct timespec *);
int    sched_setparam(pid_t, const struct sched_param *);
int    sched_setscheduler(pid_t, int, const struct sched_param *);
int    sched_yield(void);
```

---

# `search.h` - search tables

<!-- POSIX -->

### Types

```c
ENTRY
ACTION
ENTRY
```

### Structures

```c
entry
```

### Functions

```c
int    hcreate(size_t);
void   hdestroy(void);
ENTRY *hsearch(ENTRY, ACTION);
void   insque(void *, void *);
void  *lfind(const void *, const void *, size_t *, size_t, int (*)(const void *, const void *));
void  *lsearch(const void *, void *, size_t *, size_t, int (*)(const void *, const void *));
void   remque(void *);
void  *tdelete(const void *restrict, void **restrict, int(*)(const void *, const void *));
void  *tfind(const void *, void *const *, int(*)(const void *, const void *));
void  *tsearch(const void *, void **, int(*)(const void *, const void *));
void   twalk(const void *, void (*)(const void *, VISIT, int ));
```

---

# `semaphore.h` - semaphores

<!-- POSIX -->

### Types

```c
sem_t
```

### Constants

```c
SEM_FAILED
```

### Functions

```c
int    sem_close(sem_t *);
int    sem_destroy(sem_t *);
int    sem_getvalue(sem_t *restrict, int *restrict);
int    sem_init(sem_t *, int, unsigned);
sem_t *sem_open(const char *, int, ...);
int    sem_post(sem_t *);
int    sem_timedwait(sem_t *restrict, const struct timespec *restrict);
int    sem_trywait(sem_t *);
int    sem_unlink(const char *);
int    sem_wait(sem_t *);
```

---

# `setjmp.h` - stack environment declarations

<!-- CLIB -->

### Types

```c
jmp_buf
sigjmp_buf
```

### Functions

```c
void   _longjmp(jmp_buf, int);
void   longjmp(jmp_buf, int);
void   siglongjmp(sigjmp_buf, int);
int    _setjmp(jmp_buf);
int    setjmp(jmp_buf);
int    sigsetjmp(sigjmp_buf, int);
```

---

# `signal.h` - signals

<!-- CLIB -->

### Types

```c
sig_atomic_t
sigset_t
mcontext_t
ucontext_t
stack_t
siginfo_t
```

### Structures

```c
sigevent
sigval
sigaction
```

### Constants

```c
SIG_BLOCK
SIG_DFL
SIG_ERR
SIG_HOLD
SIG_IGN
SIG_SETMASK
SIG_UNBLOCK
SIGEV_NONE
SIGEV_SIGNAL
SIGEV_THREAD
SIGABRT
SIGALRM
SIGBUS
SIGCHLD
SIGCONT
SIGFPE
SIGHUP
SIGILL
SIGINT
SIGKILL
SIGPIPE
SIGPOLL
SIGPROF
SIGQUIT
SIGRTMIN
SIGRTMAX
SIGSEGV
SIGSTOP
SIGSTKSZ
SIGSYS
SIGTERM
SIGTSTP
SIGTTIN
SIGTTOU
SIGUSR1
SIGUSR2
SIGTRAP
SIGURG
SIGVTALRM
SIGXCPU
SIGXFSZ
SA_NOCLDSTOP
SA_ONSTACK
SA_RESETHAND
SA_RESTART
SA_SIGINFO
SA_NOCLDWAIT
SA_NODEFER
SS_ONSTACK
SS_DISABLE
MINSIGSTKSZ
ILL_ILLOPC
ILL_ILLOPN
ILL_ILLADR
ILL_ILLTRP
ILL_PRVOPC
ILL_PRVREG
ILL_COPROC
ILL_BADSTK
FPE_INTDIV
FPE_INTOVF
FPE_FLTDIV
FPE_FLTOVF
FPE_FLTUND
FPE_FLTRES
FPE_FLTINV
FPE_FLTSUB
SEGV_MAPERR
SEGV_ACCERR
BUS_ADRALN
BUS_ADRERR
BUS_OBJERR
TRAP_BRKPT
TRAP_TRACE
CLD_EXITED
CLD_KILLED
CLD_DUMPED
CLD_TRAPPED
CLD_STOPPED
CLD_CONTINUED
POLL_IN
POLL_OUT
POLL_MSG
POLL_ERR
POLL_PRI
POLL_HUP
SI_USER
SI_QUEUE
SI_TIMER
SI_ASYNCIO
SI_MESGQ
```

### Functions

```c
int    kill(pid_t, int);
int    killpg(pid_t, int);
void   psiginfo(const siginfo_t *, const char *);
void   psignal(int, const char *);
int    pthread_kill(pthread_t, int);
int    pthread_sigmask(int, const sigset_t *restrict, sigset_t *restrict);
int    raise(int);
int    sigaction(int, const struct sigaction *restrict, struct sigaction *restrict);
int    sigaddset(sigset_t *, int);
int    sigaltstack(const stack_t *restrict, stack_t *restrict);
int    sigdelset(sigset_t *, int);
int    sigemptyset(sigset_t *);
int    sigfillset(sigset_t *);
int    sighold(int);
int    sigignore(int);
int    siginterrupt(int, int);
int    sigismember(const sigset_t *, int);
void (*signal(int, void (*)(int)))(int);
int    sigpause(int);
int    sigpending(sigset_t *);
int    sigprocmask(int, const sigset_t *restrict, sigset_t *restrict);
int    sigqueue(pid_t, int, const union sigval);
int    sigrelse(int);
void (*sigset(int, void (*)(int)))(int);
int    sigsuspend(const sigset_t *);
int    sigtimedwait(const sigset_t *restrict, siginfo_t *restrict, const struct timespec *restrict);
int    sigwait(const sigset_t *restrict, int *restrict);
int    sigwaitinfo(const sigset_t *restrict, siginfo_t *restrict);
```

---

# `spawn.h` - spawn

<!-- POSIX -->

### Types

```c
posix_spawnattr_t
posix_spawn_file_actions_t
```

### Constants

```c
POSIX_SPAWN_RESETIDS
POSIX_SPAWN_SETPGROUP
POSIX_SPAWN_SETSCHEDPARAM
POSIX_SPAWN_SETSCHEDULER
POSIX_SPAWN_SETSIGDEF
POSIX_SPAWN_SETSIGMASK
```

### Functions

```c
int   posix_spawn(pid_t *restrict, const char *restrict,
          const posix_spawn_file_actions_t *,
          const posix_spawnattr_t *restrict, char *const [restrict],
          char *const [restrict]);
int   posix_spawn_file_actions_addclose(posix_spawn_file_actions_t *,
          int);
int   posix_spawn_file_actions_adddup2(posix_spawn_file_actions_t *,
          int, int);
int   posix_spawn_file_actions_addopen(posix_spawn_file_actions_t *restrict,
          int, const char *restrict, int, mode_t);
int   posix_spawn_file_actions_destroy(posix_spawn_file_actions_t *);
int   posix_spawn_file_actions_init(posix_spawn_file_actions_t *);
int   posix_spawnattr_destroy(posix_spawnattr_t *);
int   posix_spawnattr_getflags(const posix_spawnattr_t *restrict,
          short *restrict);
int   posix_spawnattr_getpgroup(const posix_spawnattr_t *restrict,
          pid_t *restrict);
int   posix_spawnattr_getschedparam(const posix_spawnattr_t *restrict,
          struct sched_param *restrict);
int   posix_spawnattr_getschedpolicy(const posix_spawnattr_t *restrict,
          int *restrict);
int   posix_spawnattr_getsigdefault(const posix_spawnattr_t *restrict,
          sigset_t *restrict);
int   posix_spawnattr_getsigmask(const posix_spawnattr_t *restrict,
          sigset_t *restrict);
int   posix_spawnattr_init(posix_spawnattr_t *);
int   posix_spawnattr_setflags(posix_spawnattr_t *, short);
int   posix_spawnattr_setpgroup(posix_spawnattr_t *, pid_t);
int   posix_spawnattr_setschedparam(posix_spawnattr_t *restrict,
          const struct sched_param *restrict);
int   posix_spawnattr_setschedpolicy(posix_spawnattr_t *, int);
int   posix_spawnattr_setsigdefault(posix_spawnattr_t *restrict,
          const sigset_t *restrict);
int   posix_spawnattr_setsigmask(posix_spawnattr_t *restrict,
          const sigset_t *restrict);
int   posix_spawnp(pid_t *restrict, const char *restrict,
          const posix_spawn_file_actions_t *,
          const posix_spawnattr_t *restrict,
          char *const [restrict], char *const [restrict]);
```

---

# `stdalign.h` - `alignas` and `alignof` convenience macros

<!-- CLIB -->

### Constants

```c
__alignas_is_defined
__alignof_is_defined
```

### Functions

```c
_Alignas
_Alignof
alignas
alignof
```

---

# `stdarg.h` - handle variable argument list

<!-- CLIB -->

### Types

```c
va_list
```

### Functions

```c
void va_start(va_list ap, argN);
void va_copy(va_list dest, va_list src);
type va_arg(va_list ap, type);
void va_end(va_list ap);
```

---

# `stdatomic.h` - atomic operations library

<!-- CLIB -->

### Types

```c
_Atomic
atomic_flag
atomic_bool
atomic_char
atomic_schar
atomic_uchar
atomic_short
atomic_ushort
atomic_int
atomic_uint
atomic_long
atomic_ulong
atomic_llong
atomic_ullong
atomic_char16_t
atomic_char32_t
atomic_wchar_t
atomic_int_least8_t
atomic_uint_least8_t
atomic_int_least16_t
atomic_uint_least16_t
atomic_int_least32_t
atomic_uint_least32_t
atomic_int_least64_t
atomic_uint_least64_t
atomic_int_fast8_t
atomic_uint_fast8_t
atomic_int_fast16_t
atomic_uint_fast16_t
atomic_int_fast32_t
atomic_uint_fast32_t
atomic_int_fast64_t
atomic_uint_fast64_t
atomic_intptr_t
atomic_uintptr_t
atomic_size_t
atomic_ptrdiff_t
atomic_intmax_t
atomic_uintmax_t
```

### Constants

```c
memory_order_relaxed
memory_order_consume
memory_order_acquire
memory_order_release
memory_order_acq_rel
memory_order_seq_cst
ATOMIC_BOOL_LOCK_FREE
ATOMIC_CHAR_LOCK_FREE
ATOMIC_CHAR16_T_LOCK_FREE
ATOMIC_CHAR32_T_LOCK_FREE
ATOMIC_WCHAR_T_LOCK_FREE
ATOMIC_SHORT_LOCK_FREE
ATOMIC_INT_LOCK_FREE
ATOMIC_LONG_LOCK_FREE
ATOMIC_LLONG_LOCK_FREE
ATOMIC_POINTER_LOCK_FREE
ATOMIC_FLAG_INIT
```

### Functions

```c
#define ATOMIC_VAR_INIT(value)
type    kill_dependency(type y);
_Bool   atomic_flag_test_and_set(volatile atomic_flag* obj);
_Bool   atomic_flag_test_and_set_explicit(volatile atomic_flag* obj, memory_order order);
void    atomic_flag_clear( volatile atomic_flag* obj );
void    atomic_flag_clear_explicit( volatile atomic_flag* obj, memory_order order );
void    atomic_init( volatile A* obj, C desired );
_Bool   atomic_is_lock_free( const volatile A* obj );
void    atomic_store( volatile A* obj , C desired);
void    atomic_store_explicit( volatile A* obj, C desired, memory_order order );
C       atomic_load( const volatile A* obj );
C       atomic_load_explicit( const volatile A* obj, memory_order order );
C       atomic_exchange( volatile A* obj, C desired );
C       atomic_exchange_explicit( volatile A* obj, C desired, memory_order order );
_Bool   atomic_compare_exchange_strong( volatile A* obj, C* expected, C desired );
_Bool   atomic_compare_exchange_weak( volatile A *obj, C* expected, C desired );
_Bool   atomic_compare_exchange_strong_explicit(volatile A* obj, C* expected, C desired, 
                                                memory_order succ, memory_order fail );
_Bool   atomic_compare_exchange_weak_explicit(volatile A *obj, C* expected, C desired,
                                              memory_order succ, memory_order fail );
C       atomic_fetch_add( volatile A* obj, M arg );
C       atomic_fetch_add_explicit( volatile A* obj, M arg, memory_order order );
C       atomic_fetch_sub( volatile A* obj, M arg );
C       atomic_fetch_sub_explicit( volatile A* obj, M arg, memory_order order );
C       atomic_fetch_or( volatile A* obj, M arg );
C       atomic_fetch_or_explicit( volatile A* obj, M arg, memory_order order );
C       atomic_fetch_xor( volatile A* obj, M arg );
C       atomic_fetch_xor_explicit( volatile A* obj, M arg, memory_order order );
C       atomic_fetch_and( volatile A* obj, M arg );
C       atomic_fetch_and_explicit( volatile A* obj, M arg, memory_order order );
void    atomic_thread_fence( memory_order order );
void    atomic_signal_fence( memory_order order );
```

---

# `stdbool.h` - boolean type and values

<!-- CLIB -->

### Types

```c
bool
_Bool
```

### Constants

```c
true
false
__bool_true_false_are_defined
```

---

# `stddef.h` - standard type definitions

<!-- CLIB -->

### Types

```c
ptrdiff_t
wchar_t
size_t
max_align_t
```

### Constants

```c
NULL
```

### Functions

```c
#define offsetof(type, member)
```

---

# `stdint.h` - standard integer types

<!-- CLIB -->

### Types

```c
int8_t
int16_t
int32_t
int64_t
int_fast8_t
int_fast16_t
int_fast32_t
int_fast64_t
int_least8_t
int_least16_t
int_least32_t
int_least64_t
intmax_t
intptr_t
uint8_t
uint16_t
uint32_t
uint64_t
uint_fast8_t
uint_fast16_t
uint_fast32_t
uint_fast64_t
uint_least8_t
uint_least16_t
uint_least32_t
uint_least64_t
uintmax_t
uintptr_t
```

### Constants

```c
INT8_MIN
INT16_MIN
INT32_MIN
INT64_MIN
INT8_MAX
INT16_MAX
INT32_MAX
INT64_MAX
INT_FAST8_MIN
INT_FAST16_MIN
INT_FAST32_MIN
INT_FAST64_MIN
INT_FAST8_MAX
INT_FAST16_MAX
INT_FAST32_MAX
INT_FAST64_MAX
INT_LEAST8_MIN
INT_LEAST16_MIN
INT_LEAST32_MIN
INT_LEAST64_MIN
INT_LEAST8_MAX
INT_LEAST16_MAX
INT_LEAST32_MAX
INT_LEAST64_MAX
INTPTR_MIN
INTPTR_MAX
INTMAX_MIN
INTMAX_MAX
UINT8_MAX
UINT16_MAX
UINT32_MAX
UINT64_MAX
UINT_FAST8_MAX
UINT_FAST16_MAX
UINT_FAST32_MAX
UINT_FAST64_MAX
UINT_LEAST8_MAX
UINT_LEAST16_MAX
UINT_LEAST32_MAX
UINT_LEAST64_MAX
UINTPTR_MAX
UINTMAX_MAX
PTRDIFF_MIN
PTRDIFF_MAX
SIG_ATOMIC_MIN
SIG_ATOMIC_MAX
SIZE_MAX
WCHAR_MIN
WCHAR_MAX
WINT_MIN
WINT_MAX
```

### Functions

```c
#define INT8_C(value)
#define INT16_C(value)
#define INT32_C(value)
#define INT64_C(value)
#define INTMAX_C(value)
#define UINT8_C(value)
#define UINT16_C(value)
#define UINT32_C(value)
#define UINT64_C(value)
#define UINTMAX_C(value)
```

---

# `stdio.h` - standard buffered input/output

<!-- CLIB -->

### Types

```c
FILE
fpos_t
```

### Constants

```c
BUFSIZ
L_ctermid
L_tmpnam
L_tmpnam_S
_IOFBF
_IOLBF
_IONBF
SEEK_CUR
SEEK_END
SEEK_SET
FILENAME_MAX
FOPEN_MAX
TMP_MAX
TMP_MAX_S
EOF
P_tmpdir
stderr
stdin
stdout
```

### Functions

```c
void     clearerr(FILE *);
char    *ctermid(char *);
int      dprintf(int, const char *restrict, ...)
int      fclose(FILE *);
FILE    *fdopen(int, const char *);
int      feof(FILE *);
int      ferror(FILE *);
int      fflush(FILE *);
int      fgetc(FILE *);
int      fgetpos(FILE *restrict, fpos_t *restrict);
char    *fgets(char *restrict, int, FILE *restrict);
int      fileno(FILE *);
void     flockfile(FILE *);
FILE    *fmemopen(void *restrict, size_t, const char *restrict);
FILE    *fopen(const char *restrict, const char *restrict);
errno_t  fopen_s(FILE *restrict *restrict streamptr, const char *restrict filename, 
                 const char *restrict mode);
int      fprintf(FILE *restrict, const char *restrict, ...);
int      fprintf_s(FILE *restrict stream, const char *restrict format, ...);
int      fputc(int, FILE *);
int      fputs(const char *restrict, FILE *restrict);
size_t   fread(void *restrict, size_t, size_t, FILE *restrict);
FILE    *freopen(const char *restrict, const char *restrict, FILE *restrict);
errno_t  freopen_s(FILE *restrict *restrict newstreamptr, const char *restrict filename, 
                   const char *restrict mode, FILE *restrict stream);
int      fscanf(FILE *restrict, const char *restrict, ...);
int      fscanf_s(FILE *restrict stream, const char *restrict format, ...);
int      fseek(FILE *, long, int);
int      fseeko(FILE *, off_t, int);
int      fsetpos(FILE *, const fpos_t *);
long     ftell(FILE *);
off_t    ftello(FILE *);
int      ftrylockfile(FILE *);
void     funlockfile(FILE *);
int      fwide( FILE *stream, int mode );
size_t   fwrite(const void *restrict, size_t, size_t, FILE *restrict);
int      getc(FILE *);
int      getchar(void);
int      getc_unlocked(FILE *);
int      getchar_unlocked(void);
ssize_t  getdelim(char **restrict, size_t *restrict, int, FILE *restrict);
ssize_t  getline(char **restrict, size_t *restrict, FILE *restrict);
char    *gets(char *);
char    *gets_s( char *str, rsize_t n );
FILE    *open_memstream(char **, size_t *);
int      pclose(FILE *);
void     perror(const char *);
FILE    *popen(const char *, const char *);
int      printf(const char *restrict, ...);
int      printf_s(const char *restrict format, ...);
int      putc(int, FILE *);
int      putchar(int);
int      putc_unlocked(int, FILE *);
int      putchar_unlocked(int);
int      puts(const char *);
int      remove(const char *);
int      rename(const char *, const char *);
int      renameat(int, const char *, int, const char *);
void     rewind(FILE *);
int      scanf(const char *restrict, ...);
int      scanf_s(const char *restrict format, ...);
void     setbuf(FILE *restrict, char *restrict);
int      setvbuf(FILE *restrict, char *restrict, int, size_t);
int      snprintf(char *restrict, size_t, const char *restrict, ...);
int      snprintf_s(char *restrict buffer, rsize_t bufsz, const char *restrict format, ...);
int      sprintf(char *restrict, const char *restrict, ...);
int      sprintf_s(char *restrict buffer, rsize_t bufsz, const char *restrict format, ...);
int      sscanf(const char *restrict, const char *restrict, ...);
int      sscanf_s(const char *restrict buffer, const char *restrict format, ...);
char    *tempnam(const char *, const char *);
FILE    *tmpfile(void);
errno_t  tmpfile_s(FILE * restrict * restrict streamptr);
char    *tmpnam(char *);
errno_t  tmpnam_s(char *filename_s, rsize_t maxsize);
int      ungetc(int, FILE *);
int      vdprintf(int, const char *restrict, va_list);
int      vfprintf(FILE *restrict, const char *restrict, va_list);
int      vfprintf_s( FILE *restrict stream, const char *restrict format, va_list arg);
int      vfscanf(FILE *restrict, const char *restrict, va_list);
int      vfscanf_s( FILE *restrict stream, const char *restrict format, va_list vlist);
int      vprintf(const char *restrict, va_list);
int      vprintf_s( const char *restrict format, va_list arg);
int      vscanf(const char *restrict, va_list);
int      vscanf_s(const char *restrict format, va_list vlist);
int      vsnprintf(char *restrict, size_t, const char *restrict, va_list);
int      vsnprintf_s(char *restrict buffer, rsize_t bufsz, const char * restrict format, va_list arg);
int      vsprintf(char *restrict, const char *restrict, va_list);
int      vsprintf_s( char *restrict buffer, rsize_t bufsz, const char *restrict format, va_list arg);
int      vsscanf(const char *restrict, const char *restrict, va_list);
int      vsscanf_s( const char *restrict buffer, const char *restrict format, va_list vlist);
```

---

# `stdlib.h` - standard library definitions

<!-- CLIB -->

### Types

```c
div_t
ldiv_t
lldiv_t
```

### Constants

```c
EXIT_FAILURE
EXIT_SUCCESS
RAND_MAX
MB_CUR_MAX
```

### Functions

```c
void          _Exit(int);
long          a64l(const char *);
void          abort(void);
int           abs(int);
void         *aligned_alloc( size_t alignment, size_t size );
int           atexit(void (*)(void));
int           at_quick_exit( void (*func)() );
double        atof(const char *);
int           atoi(const char *);
long          atol(const char *);
long long     atoll(const char *);
void         *bsearch(const void *, const void *, size_t, size_t,
                  int (*)(const void *, const void *));
void         *calloc(size_t, size_t);
div_t         div(int, int);
double        drand48(void);
double        erand48(unsigned short [3]);
void          exit(int);
void          free(void *);
char         *getenv(const char *);
errno_t       getenv_s( size_t *restrict len, char *restrict value,
                        rsize_t valuesz, const char *restrict name );
int           getsubopt(char **, char *const *, char **);
int           grantpt(int);
char         *initstate(unsigned, char *, size_t);
long          jrand48(unsigned short [3]);
char         *l64a(long);
long          labs(long);
void          lcong48(unsigned short [7]);
ldiv_t        ldiv(long, long);
long long     llabs(long long);
lldiv_t       lldiv(long long, long long);
long          lrand48(void);
void         *malloc(size_t);
int           mblen(const char *, size_t);
size_t        mbstowcs(wchar_t *restrict, const char *restrict, size_t);
errno_t       mbstowcs_s(size_t *restrict retval, wchar_t *restrict dst,
                         rsize_t dstsz, const char *restrict src, rsize_t len);
int           mbtowc(wchar_t *restrict, const char *restrict, size_t);
char         *mkdtemp(char *);
int           mkstemp(char *);
long          mrand48(void);
long          nrand48(unsigned short [3]);
int           posix_memalign(void **, size_t, size_t);
int           posix_openpt(int);
char         *ptsname(int);
int           putenv(char *);
void          qsort(void *, size_t, size_t, int (*)(const void *, const void *));
void          quick_exit( int exit_code );
int           rand(void);
int           rand_r(unsigned *);
long          random(void);
void         *realloc(void *, size_t);
char         *realpath(const char *restrict, char *restrict);
unsigned short *seed48(unsigned short [3]);
int           setenv(const char *, const char *, int);
void          setkey(const char *);
char         *setstate(char *);
void          srand(unsigned);
void          srand48(long);
void          srandom(unsigned);
double        strtod(const char *restrict, char **restrict);
float         strtof(const char *restrict, char **restrict);
long          strtol(const char *restrict, char **restrict, int);
long double   strtold(const char *restrict, char **restrict);
long long     strtoll(const char *restrict, char **restrict, int);
unsigned long strtoul(const char *restrict, char **restrict, int);
unsigned long long strtoull(const char *restrict, char **restrict, int);
int           system(const char *);
int           unlockpt(int);
int           unsetenv(const char *);
size_t        wcstombs(char *restrict, const wchar_t *restrict, size_t);
errno_t       wcstombs_s( size_t *restrict retval, char *restrict dst, rsize_t dstsz,
                          const wchar_t *restrict src, rsize_t len );
int           wctomb(char *, wchar_t);
errno_t       wctomb_s(int *restrict status, char *restrict s, rsize_t ssz, wchar_t wc);
```

---

# `stdnoreturn.h` - `noreturn` convenience macros

<!-- CLIB -->

### Types

```c
noreturn
_Noreturn
```

---

# `string.h` - string operations

<!-- CLIB -->

### Functions

```c
void    *memccpy(void *restrict, const void *restrict, int, size_t);
void    *memchr(const void *, int, size_t);
int      memcmp(const void *, const void *, size_t);
void    *memcpy(void *restrict, const void *restrict, size_t);
errno_t  memcpy_s( void *restrict dest, rsize_t destsz, const void *restrict src, rsize_t count );
void    *memmove(void *, const void *, size_t);
errno_t  memmove_s(void *dest, rsize_t destsz, const void *src, rsize_t count);
void    *memset(void *, int, size_t);
errno_t  memset_s( void *dest, rsize_t destsz, int ch, rsize_t count )
char    *stpcpy(char *restrict, const char *restrict);
errno_t  strcpy_s(char *restrict dest, rsize_t destsz, const char *restrict src);
char    *stpncpy(char *restrict, const char *restrict, size_t);
errno_t  strncpy_s(char *restrict dest, rsize_t destsz, const char *restrict src, rsize_t count);
char    *strcat(char *restrict, const char *restrict);
errno_t  strcat_s(char *restrict dest, rsize_t destsz, const char *restrict src);
char    *strchr(const char *, int);
int      strcmp(const char *, const char *);
int      strcoll(const char *, const char *);
int      strcoll_l(const char *, const char *, locale_t);
char    *strcpy(char *restrict, const char *restrict);
size_t   strcspn(const char *, const char *);
char    *strdup(const char *);
char    *strerror(int);
char    *strerror_l(int, locale_t);
int      strerror_r(int, char *, size_t);
errno_t  strerror_s( char *buf, rsize_t bufsz, errno_t errnum );
size_t   strerrorlen_s( errno_t errnum );
size_t   strlen(const char *);
char    *strncat(char *restrict, const char *restrict, size_t);
errno_t  strncat_s(char *restrict dest, rsize_t destsz, const char *restrict src, rsize_t count);
int      strncmp(const char *, const char *, size_t);
char    *strncpy(char *restrict, const char *restrict, size_t);
char    *strndup(const char *, size_t);
size_t   strnlen(const char *, size_t);
size_t   strnlen_s( const char *str, size_t strsz );
char    *strpbrk(const char *, const char *);
char    *strrchr(const char *, int);
char    *strsignal(int);
size_t   strspn(const char *, const char *);
char    *strstr(const char *, const char *);
char    *strtok(char *restrict, const char *restrict);
char    *strtok_r(char *restrict, const char *restrict, char **restrict);
char    *strtok_s(char *restrict str, rsize_t *restrict strmax,
                  const char *restrict delim, char **restrict ptr);
size_t   strxfrm(char *restrict, const char *restrict, size_t);
size_t   strxfrm_l(char *restrict, const char *restrict, size_t, locale_t);
```

---

# `strings.h` - string operations

<!-- POSIX -->

### Functions

```c
int    ffs(int);
int    strcasecmp(const char *, const char *);
int    strcasecmp_l(const char *, const char *, locale_t);
int    strncasecmp(const char *, const char *, size_t);
int    strncasecmp_l(const char *, const char *, size_t, locale_t);
```

---

# `stropts.h` - STREAMS interface

<!-- POSIX -->

### Types

```c
t_scalar_t
t_uscalar_t
```

### Structures

```c
bandinfo
strpeek
strbuf
strfdinsert
strioctl
strrecvfd
str_list
str_mlist
```

### Constants

```c
I_ATMARK
I_CANPUT
I_CKBAND
I_FDINSERT
I_FIND
I_FLUSH
I_FLUSHBAND
I_GETBAND
I_GETCLTIME
I_GETSIG
I_GRDOPT
I_GWROPT
I_LINK
I_LIST
I_LOOK
I_NREAD
I_PEEK
I_PLINK
I_POP
I_PUNLINK
I_PUSH
I_RECVFD
I_SENDFD
I_SETCLTIME
I_SETSIG
I_SRDOPT
I_STR
I_SWROPT
I_UNLINK
FMNAMESZ
FLUSHR
FLUSHRW
FLUSHW
S_BANDURG
S_ERROR
S_HANGUP
S_HIPRI
S_INPUT
S_MSG
S_OUTPUT
S_RDBAND
S_RDNORM
S_WRBAND
S_WRNORM
RS_HIPRI
RMSGD
RMSGN
RNORM
RPROTDAT
RPROTDIS
RPROTNORM
SNDZERO
ANYMARK
MUXID_ALL
LASTMARK
MORECTL
MOREDATA
MSG_ANY
MSG_BAND
MSG_HIPRI
```

### Functions

```c
int    fattach(int, const char *);
int    fdetach(const char *);
int    getmsg(int, struct strbuf *restrict, struct strbuf *restrict, int *restrict);
int    getpmsg(int, struct strbuf *restrict, struct strbuf *restrict, int *restrict, int *restrict);
int    ioctl(int, int, ...);
int    isastream(int);
int    putmsg(int, const struct strbuf *, const struct strbuf *, int);
int    putpmsg(int, const struct strbuf *, const struct strbuf *, int, int);
```

---

# `sys/ipc.h` - XSI interprocess communication access structure

<!-- POSIX -->

### Structures

```c
ipc_perm
```

### Constants

```c
IPC_CREAT
IPC_EXCL
IPC_NOWAIT
IPC_PRIVATE
IPC_RMID
IPC_SET
IPC_STAT
```

### Functions

```c
key_t  ftok(const char *, int);
```

---

# `sys/mman.h` - memory management declarations

<!-- POSIX -->

### Structures

```c
posix_typed_mem_info
```

### Constants

```c
PROT_EXEC
PROT_NONE
PROT_READ
PROT_WRITE
MAP_FIXED
MAP_PRIVATE
MAP_SHARED
MS_ASYNC
MS_INVALIDATE
MS_SYNC
MCL_CURRENT
MCL_FUTURE
MAP_FAILED
POSIX_MADV_DONTNEED
POSIX_MADV_NORMAL
POSIX_MADV_RANDOM
POSIX_MADV_SEQUENTIAL
POSIX_MADV_WILLNEED
POSIX_TYPED_MEM_ALLOCATE
POSIX_TYPED_MEM_ALLOCATE_CONTIG
POSIX_TYPED_MEM_MAP_ALLOCATABLE
```

### Functions

```c
int    mlock(const void *, size_t);
int    mlockall(int);
void  *mmap(void *, size_t, int, int, int, off_t);
int    mprotect(void *, size_t, int);
int    msync(void *, size_t, int);
int    munlock(const void *, size_t);
int    munlockall(void);
int    munmap(void *, size_t);
int    posix_madvise(void *, size_t, int);
int    posix_mem_offset(const void *restrict, size_t, off_t *restrict,
           size_t *restrict, int *restrict);
int    posix_typed_mem_get_info(int, struct posix_typed_mem_info *);
int    posix_typed_mem_open(const char *, int, int);
int    shm_open(const char *, int, mode_t);
int    shm_unlink(const char *);
```

---

# `sys/msg.h` - XSI message queue structures

<!-- POSIX -->

### Types

```c
msgqnum_t
msglen_t
```

### Constants

```c
MSG_NOERROR
```

### Structures

```c
msqid_ds
```

### Functions

```c
int       msgctl(int, int, struct msqid_ds *);
int       msgget(key_t, int);
ssize_t   msgrcv(int, void *, size_t, long, int);
int       msgsnd(int, const void *, size_t, int);
```

---

# `sys/resource.h` - definitions for XSI resource operations

<!-- POSIX -->

### Constants

```c
PRIO_PROCESS
PRIO_PGRP
PRIO_USER
RLIM_INFINITY
RLIM_SAVED_MAX
RLIM_SAVED_CUR
RUSAGE_SELF
RUSAGE_CHILDREN
RLIMIT_CORE
RLIMIT_CPU
RLIMIT_DATA
RLIMIT_FSIZE
RLIMIT_NOFILE
RLIMIT_STACK
RLIMIT_AS
```

### Types

```c
rlim_t
```

### Structures

```c
rlimit
rusage
```

### Functions

```c
int  getpriority(int, id_t);
int  getrlimit(int, struct rlimit *);
int  getrusage(int, struct rusage *);
int  setpriority(int, id_t, int);
int  setrlimit(int, const struct rlimit *);
```

---

# `sys/select.h` - select types

<!-- POSIX -->

### Structures

```c
timeval
```

### Constants

```c
FD_SETSIZE
```

### Functions

```c
void FD_CLR(int, fd_set *);
int  FD_ISSET(int, fd_set *);
void FD_SET(int, fd_set *);
void FD_ZERO(fd_set *);
int  pselect(int, fd_set *restrict, fd_set *restrict, fd_set *restrict,
         const struct timespec *restrict, const sigset_t *restrict);
int  select(int, fd_set *restrict, fd_set *restrict, fd_set *restrict,
         struct timeval *restrict);
```

---

# `sys/sem.h` - XSI semaphore facility

<!-- POSIX -->

### Constants

```c
SEM_UNDO
GETNCNT
GETPID
GETVAL
GETALL
GETZCNT
SETVAL
SETALL
```

### Structures

```c
semid_ds
sembuf
```

### Functions

```c
int   semctl(int, int, int, ...);
int   semget(key_t, int, int);
int   semop(int, struct sembuf *, size_t);
```

---

# `sys/shm.h` - XSI shared memory facility

<!-- POSIX -->

### Constants

```c
SHM_RDONLY
SHM_RND
SHMLBA
```

### Types

```c
shmatt_t
```

### Structures

```c
shmid_ds
```

### Functions

```c
void *shmat(int, const void *, int);
int   shmctl(int, int, struct shmid_ds *);
int   shmdt(const void *);
int   shmget(key_t, size_t, int);
```

---

# `sys/socket.h` - main sockets header

<!-- POSIX -->

### Types

```c
socklen_t
sa_family_t
```

### Structures

```c
sockaddr
sockaddr_storage
msghdr
cmsghdr
linger
```

### Constants

```c
SCM_RIGHTS
SOL_SOCKET
SOCK_DGRAM
SOCK_RAW
SOCK_SEQPACKET
SOCK_STREAM
SO_ACCEPTCONN
SO_BROADCAST
SO_DEBUG
SO_DONTROUTE
SO_ERROR
SO_KEEPALIVE
SO_LINGER
SO_OOBINLINE
SO_RCVBUF
SO_RCVLOWAT
SO_RCVTIMEO
SO_REUSEADDR
SO_SNDBUF
SO_SNDLOWAT
SO_SNDTIMEO
SO_TYPE
SOMAXCONN
MSG_CTRUNC
MSG_DONTROUTE
MSG_EOR
MSG_OOB
MSG_NOSIGNAL
MSG_PEEK
MSG_TRUNC
MSG_WAITALL
AF_INET
AF_INET6
AF_UNIX
AF_UNSPEC
SHUT_RD
SHUT_RDWR
SHUT_WR
```

### Functions

```c
#define CMSG_DATA(cmsg)
#define CMSG_NXTHDR(mhdr,cmsg)
#define CMSG_FIRSTHDR(mhdr)
int     accept(int, struct sockaddr *restrict, socklen_t *restrict);
int     bind(int, const struct sockaddr *, socklen_t);
int     connect(int, const struct sockaddr *, socklen_t);
int     getpeername(int, struct sockaddr *restrict, socklen_t *restrict);
int     getsockname(int, struct sockaddr *restrict, socklen_t *restrict);
int     getsockopt(int, int, int, void *restrict, socklen_t *restrict);
int     listen(int, int);
ssize_t recv(int, void *, size_t, int);
ssize_t recvfrom(int, void *restrict, size_t, int,
                 struct sockaddr *restrict, socklen_t *restrict);
ssize_t recvmsg(int, struct msghdr *, int);
ssize_t send(int, const void *, size_t, int);
ssize_t sendmsg(int, const struct msghdr *, int);
ssize_t sendto(int, const void *, size_t, int, const struct sockaddr *, socklen_t);
int     setsockopt(int, int, int, const void *, socklen_t);
int     shutdown(int, int);
int     sockatmark(int);
int     socket(int, int, int);
int     socketpair(int, int, int, int [2]);
```

---

# `sys/stat.h` - data returned by the `stat()` function

<!-- POSIX -->

### Structures

```c
stat
```

### Constants

```c
S_IFMT
S_IFBLK
S_IFCHR
S_IFIFO
S_IFREG
S_IFDIR
S_IFLNK
S_IFSOCK
S_IRWXU
S_IRUSR
S_IWUSR
S_IXUSR
S_IRWXG
S_IRGRP
S_IWGRP
S_IXGRP
S_IRWXO
S_IROTH
S_IWOTH
S_IXOTH
S_ISUID
S_ISGID
S_ISVTX
UTIME_NOW
UTIME_OMIT
```

### Functions

```c
#define S_ISBLK(m)
#define S_ISCHR(m)
#define S_ISDIR(m)
#define S_ISFIFO(m)
#define S_ISREG(m)
#define S_ISLNK(m)
#define S_ISSOCK(m)
#define S_TYPEISMQ(buf)
#define S_TYPEISSEM(buf)
#define S_TYPEISSHM(buf)
#define S_TYPEISTMO(buf)
int     chmod(const char *, mode_t);
int     fchmod(int, mode_t);
int     fchmodat(int, const char *, mode_t, int);
int     fstat(int, struct stat *);
int     fstatat(int, const char *restrict, struct stat *restrict, int);
int     futimens(int, const struct timespec [2]);
int     lstat(const char *restrict, struct stat *restrict);
int     mkdir(const char *, mode_t);
int     mkdirat(int, const char *, mode_t);
int     mkfifo(const char *, mode_t);
int     mkfifoat(int, const char *, mode_t);
int     mknod(const char *, mode_t, dev_t);
int     mknodat(int, const char *, mode_t, dev_t);
int     stat(const char *restrict, struct stat *restrict);
mode_t  umask(mode_t);
int     utimensat(int, const char *, const struct timespec [2], int);
```

---

# `sys/statvfs.h` - VFS File System information structure

<!-- POSIX -->

### Structures

```c
statvfs
```

### Constants

```c
ST_RDONLY
ST_NOSUID
```

### Functions

```c
int fstatvfs(int, struct statvfs *);
int statvfs(const char *restrict, struct statvfs *restrict);
```

---

# `sys/time.h` - time types

<!-- POSIX -->

### Structures

```c
timeval
itimerval
```

### Constants

```c
ITIMER_REAL
ITIMER_VIRTUAL
ITIMER_PROF
```

### Functions

```c
int   getitimer(int, struct itimerval *);
int   gettimeofday(struct timeval *restrict, void *restrict);
int   setitimer(int, const struct itimerval *restrict,
          struct itimerval *restrict);
int   select(int, fd_set *restrict, fd_set *restrict, fd_set *restrict,
          struct timeval *restrict);
int   utimes(const char *, const struct timeval [2]);
```

---

# `sys/times.h` - file access and modification times structure

### Structures

```c
tms
```

### Functions

```c
clock_t times(struct tms *);
```

---

# `sys/types.h` - data types

<!-- POSIX -->

### Types

```c
blkcnt_t
blksize_t
clock_t
clockid_t
dev_t
fsblkcnt_t
fsfilcnt_t
gid_t
id_t
ino_t
key_t
mode_t
nlink_t
off_t
pid_t
pthread_attr_t
pthread_barrier_t
pthread_barrierattr_t
pthread_cond_t
pthread_condattr_t
pthread_key_t
pthread_mutex_t
pthread_mutexattr_t
pthread_once_t
pthread_rwlock_t
pthread_rwlockattr_t
pthread_spinlock_t
pthread_t
size_t
ssize_t
suseconds_t
time_t
timer_t
trace_attr_t
trace_event_id_t
trace_event_set_t
trace_id_t
uid_t
```

---

# `sys/uio.h` - definitions for vector I/O operations

<!-- POSIX -->

### Structures

```c
iovec
```

### Functions

```c
ssize_t readv(int, const struct iovec *, int);
ssize_t writev(int, const struct iovec *, int);
```

---

# `sys/un.h` - definitions for UNIX domain sockets

<!-- POSIX -->

### Structures

```c
sockaddr_un
```

---

# `sys/utsname.h` - system name structure

<!-- POSIX -->

### Structures

```c
utsname
```

### Functions

```c
int uname(struct utsname *);
```

---

# `sys/wait.h` - declarations for waiting

<!-- POSIX -->

### Types

```c
idtype_t
```

### Constants

```c
WCONTINUED
WNOHANG
WUNTRACED
WEXITSTATUS
WIFCONTINUED
WIFEXITED
WIFSIGNALED
WIFSTOPPED
WSTOPSIG
WTERMSIG
WEXITED
WNOWAIT
WSTOPPED
```

### Functions

```c
pid_t  wait(int *);
int    waitid(idtype_t, id_t, siginfo_t *, int);
pid_t  waitpid(pid_t, int *, int);
```

---

#  `syslog.h` - definitions for system error logging

<!-- POSIX -->

### Constants

```c
LOG_PID
LOG_CONS
LOG_NDELAY
LOG_ODELAY
LOG_NOWAIT
LOG_KERN
LOG_USER
LOG_MAIL
LOG_NEWS
LOG_UUCP
LOG_DAEMON
LOG_AUTH
LOG_CRON
LOG_LPR
LOG_LOCAL0
LOG_LOCAL1
LOG_LOCAL2
LOG_LOCAL3
LOG_LOCAL4
LOG_LOCAL5
LOG_LOCAL6
LOG_LOCAL7
LOG_EMERG
LOG_ALERT
LOG_CRIT
LOG_ERR
LOG_WARNING
LOG_NOTICE
LOG_INFO
LOG_DEBUG
```

### Functions

```c
#define LOG_MASK(pri)
void    closelog(void);
void    openlog(const char *, int, int);
int     setlogmask(int);
void    syslog(int, const char *, ...);
```

---

# `tar.h` - extended tar definitions

<!-- POSIX -->

### Constants

```c
TMAGIC
TMAGLEN
TVERSION
TVERSLEN
REGTYPE
AREGTYPE
LNKTYPE
SYMTYPE
CHRTYPE
BLKTYPE
DIRTYPE
FIFOTYPE
CONTTYPE
TSUID
TSGID
TSVTX
TUREAD
TUWRITE
TUEXEC
TGREAD
TGWRITE
TGEXEC
TOREAD
TOWRITE
TOEXEC
```

---

# `termios.h` - define values for termios

<!-- POSIX -->

### Types

```c
cc_t
speed_t
tcflag_t
```

### Structures

```c
termios
```

### Constants

```c
NCCS
VEOF
VEOL
VERASE
VINTR
VKILL
VMIN
VQUIT
VSTART
VSTOP
VSUSP
VTIME
BRKINT
ICRNL
IGNBRK
IGNCR
IGNPAR
INLCR
INPCK
ISTRIP
IXANY
IXOFF
IXON
PARMRK
OPOST
ONLCR
OCRNL
ONOCR
ONLRET
OFDEL
OFILL
NLDLY
CRDLY
TABDLY
BSDLY
VTDLY
FFDLY
CSIZE
CSTOPB
CREAD
PARENB
PARODD
HUPCL
CLOCAL
ECHO
ECHOE
ECHOK
ECHONL
ICANON
IEXTEN
ISIG
NOFLSH
TOSTOP
TCSANOW
TCSADRAIN
TCSAFLUSH
TCIFLUSH
TCIOFLUSH
TCOFLUSH
TCIOFF
TCION
TCOOFF
TCOON
```

### Functions

```c
speed_t cfgetispeed(const struct termios *);
speed_t cfgetospeed(const struct termios *);
int     cfsetispeed(struct termios *, speed_t);
int     cfsetospeed(struct termios *, speed_t);
int     tcdrain(int);
int     tcflow(int, int);
int     tcflush(int, int);
int     tcgetattr(int, struct termios *);
pid_t   tcgetsid(int);
int     tcsendbreak(int, int);
int     tcsetattr(int, int, const struct termios *);
```

---

# `tgmath.h` - type-generic macros

<!-- CLIB -->

no new definitions -- just redefinitions

---

# `threads.h` - thread library

<!-- CLIB -->

### Types

```c
thrd_t
thrd_start_t
mtx_t
once_flag
cnd_t
tss_t
tss_dtor_t
```

### Constants

```c
TSS_DTOR_ITERATIONS
__STDC_NO_THREADS__
thrd_success
thrd_nomem
thrd_timedout
thrd_busy
thrd_erro
mtx_plain
mtx_recursive
mtx_timed
ONCE_FLAG_INIT
thread_local
_Thread_local
```

### Functions

```c
int thrd_create( thrd_t *thr, thrd_start_t func, void *arg );
int thrd_equal( thrd_t lhs, thrd_t rhs );
thrd_t thrd_current();
int thrd_sleep( const struct timespec* time_point, struct timespec* remaining );
void thrd_yield();
_Noreturn void thrd_exit( int res );
int thrd_detach( thrd_t thr );
int thrd_join( thrd_t thr, int *res );
int mtx_init( mtx_t* mutex, int type );
int mtx_lock( mtx_t* mutex );
int mtx_timedlock( mtx_t *restrict mutex, const struct timespec *restrict time_point );
int mtx_trylock( mtx_t *mutex );
int mtx_unlock( mtx_t *mutex );
void mtx_destroy( mtx_t *mutex );
void call_once( once_flag* flag, void (*func)(void) );
int cnd_init( cnd_t* cond );
int cnd_signal( cnd_t *cond );
int cnd_broadcast( cnd_t *cond );
int cnd_wait( cnd_t* cond, mtx_t* mutex );
int cnd_timedwait( cnd_t* restrict cond, mtx_t* restrict mutex, const struct timespec* restrict time_point );
void cnd_destroy( cnd_t* cond );
int tss_create( tss_t* tss_key, tss_dtor_t destructor );
void *tss_get( tss_t tss_key );
int tss_set( tss_t tss_id, void *val );
void tss_delete( tss_t tss_id );
```

---

# `time.h` - time types

<!-- CLIB -->

### Structures

```c
tm
timespec
itimerspec
```

### Constants

```c
CLOCKS_PER_SEC
CLOCK_MONOTONIC
CLOCK_PROCESS_CPUTIME_ID
CLOCK_REALTIME
CLOCK_THREAD_CPUTIME_ID
TIMER_ABSTIME
TIME_UTC
```

### Variables

```c
extern int    daylight;
extern long   timezone;
extern char  *tzname[];
extern int    getdate_err
```

### Functions

```c
char      *asctime(const struct tm *);
char      *asctime_r(const struct tm *restrict, char *restrict);
errno_t    asctime_s(char *buf, rsize_t bufsz, const struct tm *time_ptr);
clock_t    clock(void);
int        clock_getcpuclockid(pid_t, clockid_t *);
int        clock_getres(clockid_t, struct timespec *);
int        clock_gettime(clockid_t, struct timespec *);
int        clock_nanosleep(clockid_t, int, const struct timespec *, struct timespec *);
int        clock_settime(clockid_t, const struct timespec *);
char      *ctime(const time_t *);
char      *ctime_r(const time_t *, char *);
errno_t    ctime_s(char *buffer, rsize_t bufsz, const time_t *time);
double     difftime(time_t, time_t);
struct tm *getdate(const char *);
struct tm *gmtime(const time_t *);
struct tm *gmtime_r(const time_t *restrict, struct tm *restrict);
struct tm *gmtime_s(const time_t *restrict time, struct tm *restrict result);
struct tm *localtime(const time_t *);
struct tm *localtime_r(const time_t *restrict, struct tm *restrict);
struct tm *localtime_s(const time_t *restrict time, struct tm *restrict result);
time_t     mktime(struct tm *);
int        nanosleep(const struct timespec *, struct timespec *);
size_t     strftime(char *restrict, size_t, const char *restrict, const struct tm *restrict);
size_t     strftime_l(char *restrict, size_t, const char *restrict, const struct tm *restrict, locale_t);
char      *strptime(const char *restrict, const char *restrict, struct tm *restrict);
time_t     time(time_t *);
int        timer_create(clockid_t, struct sigevent *restrict, timer_t *restrict);
int        timer_delete(timer_t);
int        timer_getoverrun(timer_t);
int        timer_gettime(timer_t, struct itimerspec *);
int        timer_settime(timer_t, int, const struct itimerspec *restrict, struct itimerspec *restrict);
void       tzset(void);
int        timespec_get( struct timespec *ts, int base)
```

---

# `trace.h` - tracing

<!-- POSIX -->

### Structures

```c
posix_trace_event_info
posix_trace_status_info
```

### Constants

```c
POSIX_TRACE_ALL_EVENTS
POSIX_TRACE_APPEND
POSIX_TRACE_CLOSE_FOR_CHILD
POSIX_TRACE_FILTER
POSIX_TRACE_FLUSH
POSIX_TRACE_FLUSH_START
POSIX_TRACE_FLUSH_STOP
POSIX_TRACE_FLUSHING
POSIX_TRACE_FULL
POSIX_TRACE_LOOP
POSIX_TRACE_NO_OVERRUN
POSIX_TRACE_NOT_FLUSHING
POSIX_TRACE_NOT_FULL
POSIX_TRACE_INHERITED
POSIX_TRACE_NOT_TRUNCATED
POSIX_TRACE_OVERFLOW
POSIX_TRACE_OVERRUN
POSIX_TRACE_RESUME
POSIX_TRACE_RUNNING
POSIX_TRACE_START
POSIX_TRACE_STOP
POSIX_TRACE_SUSPENDED
POSIX_TRACE_SYSTEM_EVENTS
POSIX_TRACE_TRUNCATED_READ
POSIX_TRACE_TRUNCATED_RECORD
POSIX_TRACE_UNNAMED_USER_EVENT
POSIX_TRACE_UNTIL_FULL
POSIX_TRACE_WOPID_EVENTS
```

### Functions

```c
int  posix_trace_attr_destroy(trace_attr_t *);
int  posix_trace_attr_getclockres(const trace_attr_t *,
         struct timespec *);
int  posix_trace_attr_getcreatetime(const trace_attr_t *,
         struct timespec *);
int  posix_trace_attr_getgenversion(const trace_attr_t *, char *);
int  posix_trace_attr_getinherited(const trace_attr_t *restrict,
         int *restrict);
int  posix_trace_attr_getlogfullpolicy(const trace_attr_t *restrict,
         int *restrict);
int  posix_trace_attr_getlogsize(const trace_attr_t *restrict,
         size_t *restrict);
int  posix_trace_attr_getmaxdatasize(const trace_attr_t *restrict,
         size_t *restrict);
int  posix_trace_attr_getmaxsystemeventsize(const trace_attr_t *restrict,
         size_t *restrict);
int  posix_trace_attr_getmaxusereventsize(const trace_attr_t *restrict,
         size_t, size_t *restrict);
int  posix_trace_attr_getname(const trace_attr_t *, char *);
int  posix_trace_attr_getstreamfullpolicy(const trace_attr_t *restrict,
         int *restrict);
int  posix_trace_attr_getstreamsize(const trace_attr_t *restrict,
         size_t *restrict);
int  posix_trace_attr_init(trace_attr_t *);
int  posix_trace_attr_setinherited(trace_attr_t *, int);
int  posix_trace_attr_setlogfullpolicy(trace_attr_t *, int);
int  posix_trace_attr_setlogsize(trace_attr_t *, size_t);
int  posix_trace_attr_setmaxdatasize(trace_attr_t *, size_t);
int  posix_trace_attr_setname(trace_attr_t *, const char *);
int  posix_trace_attr_setstreamfullpolicy(trace_attr_t *, int);
int  posix_trace_attr_setstreamsize(trace_attr_t *, size_t);
int  posix_trace_clear(trace_id_t);
int  posix_trace_close(trace_id_t);
int  posix_trace_create(pid_t, const trace_attr_t *restrict,
         trace_id_t *restrict);
int  posix_trace_create_withlog(pid_t, const trace_attr_t *restrict,
         int, trace_id_t *restrict);
void posix_trace_event(trace_event_id_t, const void *restrict, size_t);
int  posix_trace_eventid_equal(trace_id_t, trace_event_id_t,
         trace_event_id_t);
int  posix_trace_eventid_get_name(trace_id_t, trace_event_id_t, char *);
int  posix_trace_eventid_open(const char *restrict,
         trace_event_id_t *restrict);
int  posix_trace_eventset_add(trace_event_id_t, trace_event_set_t *);
int  posix_trace_eventset_del(trace_event_id_t, trace_event_set_t *);
int  posix_trace_eventset_empty(trace_event_set_t *);
int  posix_trace_eventset_fill(trace_event_set_t *, int);
int  posix_trace_eventset_ismember(trace_event_id_t,
         const trace_event_set_t *restrict, int *restrict);
int  posix_trace_eventtypelist_getnext_id(trace_id_t,
         trace_event_id_t *restrict, int *restrict);
int  posix_trace_eventtypelist_rewind(trace_id_t);
int  posix_trace_flush(trace_id_t);
int  posix_trace_get_attr(trace_id_t, trace_attr_t *);
int  posix_trace_get_filter(trace_id_t, trace_event_set_t *);
int  posix_trace_get_status(trace_id_t,
         struct posix_trace_status_info *);
int  posix_trace_getnext_event(trace_id_t,
         struct posix_trace_event_info *restrict, void *restrict,
         size_t, size_t *restrict, int *restrict);
int  posix_trace_open(int, trace_id_t *);
int  posix_trace_rewind(trace_id_t);
int  posix_trace_set_filter(trace_id_t, const trace_event_set_t *, int);
int  posix_trace_shutdown(trace_id_t);
int  posix_trace_start(trace_id_t);
int  posix_trace_stop(trace_id_t);
int  posix_trace_timedgetnext_event(trace_id_t,
         struct posix_trace_event_info *restrict, void *restrict,
         size_t, size_t *restrict, int *restrict,
         const struct timespec *restrict);
int  posix_trace_trid_eventid_open(trace_id_t, const char *restrict,
         trace_event_id_t *restrict);
int  posix_trace_trygetnext_event(trace_id_t,
         struct posix_trace_event_info *restrict, void *restrict, size_t,
         size_t *restrict, int *restrict);
```

---

# `uchar.h` - UTF-16 and UTF-32 character utilities

<!-- CLIB -->

### Types

```c
char16_t
char32_t
```

### Constants

```c
__STDC_UTF_16__
__STDC_UTF_32__
```

### Functions

```c
size_t mbrtoc16( char16_t* pc16, const char* s, size_t n, mbstate_t* ps );
size_t c16rtomb( char* s, char16_t c16, mbstate_t* ps );
size_t mbrtoc32( char32_t* pc32, const char* s, size_t n, mbstate_t* ps );
size_t c32rtomb( char* s, char32_t c32, mbstate_t* ps );
```

---

# `ulimit.h` - ulimit commands

<!-- POSIX -->

### Constants

```c
UL_GETFSIZE
UL_SETFSIZE
```

### Functions

```c
long ulimit(int, ...);
```

---

# `unistd.h` - standard symbolic constants and types

### Variables

```c
extern char  *optarg;
extern int    opterr;
extern int    optind;
extern int    optopt;
```

### Constants

```c
_POSIX_VERSION
_POSIX_ASYNC_IO
_POSIX_PRIO_IO
_POSIX_SYNC_IO
_POSIX_TIMESTAMP_RESOLUTION
_POSIX_VDISABLE
_POSIX_ADVISORY_INFO
_POSIX_ASYNCHRONOUS_IO
_POSIX_BARRIERS
_POSIX_CHOWN_RESTRICTED
_POSIX_CLOCK_SELECTION
_POSIX_CPUTIME
_POSIX_FSYNC
_POSIX_IPV6
_POSIX_JOB_CONTROL
_POSIX_MAPPED_FILES
_POSIX_MEMLOCK
_POSIX_MEMLOCK_RANGE
_POSIX_MEMORY_PROTECTION
_POSIX_MESSAGE_PASSING
_POSIX_MONOTONIC_CLOCK
_POSIX_NO_TRUNC
_POSIX_PRIORITIZED_IO
_POSIX_PRIORITY_SCHEDULING
_POSIX_RAW_SOCKETS
_POSIX_READER_WRITER_LOCKS
_POSIX_REALTIME_SIGNALS
_POSIX_REGEXP
_POSIX_SAVED_IDS
_POSIX_SEMAPHORES
_POSIX_SHARED_MEMORY_OBJECTS
_POSIX_SHELL
_POSIX_SPAWN
_POSIX_SPIN_LOCKS
_POSIX_SPORADIC_SERVER
_POSIX_SYNCHRONIZED_IO
_POSIX_THREAD_ATTR_STACKADDR
_POSIX_THREAD_ATTR_STACKSIZE
_POSIX_THREAD_CPUTIME
_POSIX_THREAD_PRIO_INHERIT
_POSIX_THREAD_PRIO_PROTECT
_POSIX_THREAD_PRIORITY_SCHEDULING
_POSIX_THREAD_PROCESS_SHARED
_POSIX_THREAD_ROBUST_PRIO_INHERIT
_POSIX_THREAD_ROBUST_PRIO_PROTECT
_POSIX_THREAD_SAFE_FUNCTIONS
_POSIX_THREAD_SPORADIC_SERVER
_POSIX_THREADS
_POSIX_TIMEOUTS
_POSIX_TIMERS
_POSIX_TRACE
_POSIX_TRACE_EVENT_FILTER
_POSIX_TRACE_INHERIT
_POSIX_TRACE_LOG
_POSIX_TYPED_MEMORY_OBJECTS
_POSIX_V6_ILP32_OFF32
_POSIX_V6_ILP32_OFFBIG
_POSIX_V6_LP64_OFF64
_POSIX_V6_LPBIG_OFFBIG
_POSIX_V7_ILP32_OFF32
_POSIX_V7_ILP32_OFFBIG
_POSIX_V7_LP64_OFF64
_POSIX_V7_LPBIG_OFFBIG
_POSIX2_VERSION
_POSIX2_C_BIND
_POSIX2_C_DEV
_POSIX2_CHAR_TERM
_POSIX2_FORT_DEV
_POSIX2_FORT_RUN
_POSIX2_LOCALEDEF
_POSIX2_PBS
_POSIX2_PBS_ACCOUNTING
_POSIX2_PBS_CHECKPOINT
_POSIX2_PBS_LOCATE
_POSIX2_PBS_MESSAGE
_POSIX2_PBS_TRACK
_POSIX2_SW_DEV
_POSIX2_SYMLINKS
_POSIX2_UPE
_XOPEN_VERSION
_XOPEN_CRYPT
_XOPEN_ENH_I18N
_XOPEN_REALTIME
_XOPEN_REALTIME_THREADS
_XOPEN_SHM
_XOPEN_STREAMS
_XOPEN_UNIX
_XOPEN_UUCP
F_OK
R_OK
W_OK
X_OK
F_LOCK
F_TEST
F_TLOCK
F_ULOCK
STDERR_FILENO
STDIN_FILENO
STDOUT_FILENO
```

### Functions

```c
int          access(const char *, int);
unsigned     alarm(unsigned);
int          chdir(const char *);
int          chown(const char *, uid_t, gid_t);
int          close(int);
size_t       confstr(int, char *, size_t);
char        *crypt(const char *, const char *);
int          dup(int);
int          dup2(int, int);
void         _exit(int);
void         encrypt(char [64], int);
int          execl(const char *, const char *, ...);
int          execle(const char *, const char *, ...);
int          execlp(const char *, const char *, ...);
int          execv(const char *, char *const []);
int          execve(const char *, char *const [], char *const []);
int          execvp(const char *, char *const []);
int          faccessat(int, const char *, int, int);
int          fchdir(int);
int          fchown(int, uid_t, gid_t);
int          fchownat(int, const char *, uid_t, gid_t, int);
int          fdatasync(int);
int          fexecve(int, char *const [], char *const []);
pid_t        fork(void);
long         fpathconf(int, int);
int          fsync(int);
int          ftruncate(int, off_t);
char        *getcwd(char *, size_t);
gid_t        getegid(void);
uid_t        geteuid(void);
gid_t        getgid(void);
int          getgroups(int, gid_t []);
long         gethostid(void);
int          gethostname(char *, size_t);
char        *getlogin(void);
int          getlogin_r(char *, size_t);
int          getopt(int, char * const [], const char *);
pid_t        getpgid(pid_t);
pid_t        getpgrp(void);
pid_t        getpid(void);
pid_t        getppid(void);
pid_t        getsid(pid_t);
uid_t        getuid(void);
int          isatty(int);
int          lchown(const char *, uid_t, gid_t);
int          link(const char *, const char *);
int          linkat(int, const char *, int, const char *, int);
int          lockf(int, int, off_t);
off_t        lseek(int, off_t, int);
int          nice(int);
long         pathconf(const char *, int);
int          pause(void);
int          pipe(int [2]);
ssize_t      pread(int, void *, size_t, off_t);
ssize_t      pwrite(int, const void *, size_t, off_t);
ssize_t      read(int, void *, size_t);
ssize_t      readlink(const char *restrict, char *restrict, size_t);
ssize_t      readlinkat(int, const char *restrict, char *restrict, size_t);
int          rmdir(const char *);
int          setegid(gid_t);
int          seteuid(uid_t);
int          setgid(gid_t);
int          setpgid(pid_t, pid_t);
pid_t        setpgrp(void);
int          setregid(gid_t, gid_t);
int          setreuid(uid_t, uid_t);
pid_t        setsid(void);
int          setuid(uid_t);
unsigned     sleep(unsigned);
void         swab(const void *restrict, void *restrict, ssize_t);
int          symlink(const char *, const char *);
int          symlinkat(const char *, int, const char *);
void         sync(void);
long         sysconf(int);
pid_t        tcgetpgrp(int);
int          tcsetpgrp(int, pid_t);
int          truncate(const char *, off_t);
char        *ttyname(int);
int          ttyname_r(int, char *, size_t);
int          unlink(const char *);
int          unlinkat(int, const char *, int);
ssize_t      write(int, const void *, size_t);
```

---

# `utime.h` - access and modification times structure

<!-- POSIX -->

### Structures

```c
utimbuf
```

### Functions

```c
int utime(const char *, const struct utimbuf *);
```

---

# `utmpx.h` - user accounting database definitions

<!-- POSIX -->

### Structures

```c
utmpx
```

### Constants

```c
EMPTY
BOOT_TIME
OLD_TIME
NEW_TIME
USER_PROCESS
INIT_PROCESS
LOGIN_PROCESS
DEAD_PROCESS
```

### Functions

```c
void          endutxent(void);
struct utmpx *getutxent(void);
struct utmpx *getutxid(const struct utmpx *);
struct utmpx *getutxline(const struct utmpx *);
struct utmpx *pututxline(const struct utmpx *);
void          setutxent(void);
```

---

# `wchar.h` - wide-character handling

<!-- CLIB -->

### Types

```c
mbstate_t
wctype_t
wint_t
```

### Constants

```c
WEOF
```

### Functions

```c
wint_t        btowc(int);
wint_t        fgetwc(FILE *);
wchar_t      *fgetws(wchar_t *restrict, int, FILE *restrict);
wint_t        fputwc(wchar_t, FILE *);
int           fputws(const wchar_t *restrict, FILE *restrict);
int           fwide(FILE *, int);
int           fwprintf(FILE *restrict, const wchar_t *restrict, ...);
int           fwscanf(FILE *restrict, const wchar_t *restrict, ...);
wint_t        getwc(FILE *);
wint_t        getwchar(void);
int           iswalnum(wint_t);
int           iswalpha(wint_t);
int           iswcntrl(wint_t);
int           iswctype(wint_t, wctype_t);
int           iswdigit(wint_t);
int           iswgraph(wint_t);
int           iswlower(wint_t);
int           iswprint(wint_t);
int           iswpunct(wint_t);
int           iswspace(wint_t);
int           iswupper(wint_t);
int           iswxdigit(wint_t);
size_t        mbrlen(const char *restrict, size_t, mbstate_t *restrict);
size_t        mbrtowc(wchar_t *restrict, const char *restrict, size_t, mbstate_t *restrict);
int           mbsinit(const mbstate_t *);
size_t        mbsnrtowcs(wchar_t *restrict, const char **restrict, size_t, size_t, mbstate_t *restrict);
size_t        mbsrtowcs(wchar_t *restrict, const char **restrict, size_t, mbstate_t *restrict);
FILE         *open_wmemstream(wchar_t **, size_t *);
wint_t        putwc(wchar_t, FILE *);
wint_t        putwchar(wchar_t);
int           swprintf(wchar_t *restrict, size_t, const wchar_t *restrict, ...);
int           swscanf(const wchar_t *restrict, const wchar_t *restrict, ...);
wint_t        towlower(wint_t);
wint_t        towupper(wint_t);
wint_t        ungetwc(wint_t, FILE *);
int           vfwprintf(FILE *restrict, const wchar_t *restrict, va_list);
int           vfwscanf(FILE *restrict, const wchar_t *restrict, va_list);
int           vswprintf(wchar_t *restrict, size_t, const wchar_t *restrict, va_list);
int           vswscanf(const wchar_t *restrict, const wchar_t *restrict, va_list);
int           vwprintf(const wchar_t *restrict, va_list);
int           vwscanf(const wchar_t *restrict, va_list);
wchar_t      *wcpcpy(wchar_t *restrict, const wchar_t *restrict);
wchar_t      *wcpncpy(wchar_t *restrict, const wchar_t *restrict, size_t);
size_t        wcrtomb(char *restrict, wchar_t, mbstate_t *restrict);
int           wcscasecmp(const wchar_t *, const wchar_t *);
int           wcscasecmp_l(const wchar_t *, const wchar_t *, locale_t);
wchar_t      *wcscat(wchar_t *restrict, const wchar_t *restrict);
wchar_t      *wcschr(const wchar_t *, wchar_t);
int           wcscmp(const wchar_t *, const wchar_t *);
int           wcscoll(const wchar_t *, const wchar_t *);
int           wcscoll_l(const wchar_t *, const wchar_t *, locale_t);
wchar_t      *wcscpy(wchar_t *restrict, const wchar_t *restrict);
size_t        wcscspn(const wchar_t *, const wchar_t *);
wchar_t      *wcsdup(const wchar_t *);
size_t        wcsftime(wchar_t *restrict, size_t, const wchar_t *restrict, const struct tm *restrict);
size_t        wcslen(const wchar_t *);
int           wcsncasecmp(const wchar_t *, const wchar_t *, size_t);
int           wcsncasecmp_l(const wchar_t *, const wchar_t *, size_t, locale_t);
wchar_t      *wcsncat(wchar_t *restrict, const wchar_t *restrict, size_t);
int           wcsncmp(const wchar_t *, const wchar_t *, size_t);
wchar_t      *wcsncpy(wchar_t *restrict, const wchar_t *restrict, size_t);
errno_t       wcsncpy_s( wchar_t *restrict dest, rsize_t destsz, const wchar_t *restrict src, rsize_t n);
errno_t       wcscat_s(wchar_t *restrict dest, rsize_t destsz, const wchar_t *restrict src);
errno_t       wcsncat_s( wchar_t *restrict dest, rsize_t destsz, const wchar_t *restrict src, rsize_t count );
size_t        wcsnlen(const wchar_t *, size_t);
size_t        wcsnrtombs(char *restrict, const wchar_t **restrict, size_t, size_t, mbstate_t *restrict);
wchar_t      *wcspbrk(const wchar_t *, const wchar_t *);
wchar_t      *wcsrchr(const wchar_t *, wchar_t);
size_t        wcsrtombs(char *restrict, const wchar_t **restrict, size_t, mbstate_t *restrict);
size_t        wcsspn(const wchar_t *, const wchar_t *);
wchar_t      *wcsstr(const wchar_t *restrict, const wchar_t *restrict);
double        wcstod(const wchar_t *restrict, wchar_t **restrict);
float         wcstof(const wchar_t *restrict, wchar_t **restrict);
wchar_t      *wcstok(wchar_t *restrict, const wchar_t *restrict, wchar_t **restrict);
wchar_t      *wcstok_s( wchar_t *restrict str, rsize_t *restrict strmax,
                        const wchar_t *restrict delim, wchar_t **restrict ptr);
long          wcstol(const wchar_t *restrict, wchar_t **restrict, int);
long double   wcstold(const wchar_t *restrict, wchar_t **restrict);
long long     wcstoll(const wchar_t *restrict, wchar_t **restrict, int);
unsigned long wcstoul(const wchar_t *restrict, wchar_t **restrict, int);
size_t        wcsnlen_s(const wchar_t *str, size_t strsz);
unsigned long long wcstoull(const wchar_t *restrict, wchar_t **restrict, int);
int           wcswidth(const wchar_t *, size_t);
size_t        wcsxfrm(wchar_t *restrict, const wchar_t *restrict, size_t);
size_t        wcsxfrm_l(wchar_t *restrict, const wchar_t *restrict, size_t, locale_t);
int           wctob(wint_t);
wctype_t      wctype(const char *);
int           wcwidth(wchar_t);
wchar_t      *wmemchr(const wchar_t *, wchar_t, size_t);
int           wmemcmp(const wchar_t *, const wchar_t *, size_t);
wchar_t      *wmemcpy(wchar_t *restrict, const wchar_t *restrict, size_t);
errno_t       wmemcpy_s( wchar_t *restrict dest, rsize_t destsz, const wchar_t *restrict src, rsize_t count );
errno_t       wmemmove_s( wchar_t *dest, rsize_t destsz, const wchar_t *src, rsize_t count);
wchar_t      *wmemmove(wchar_t *, const wchar_t *, size_t);
wchar_t      *wmemset(wchar_t *, wchar_t, size_t);
int           wprintf(const wchar_t *restrict, ...);
int           wscanf(const wchar_t *restrict, ...);
errno_t       wcscpy_s( wchar_t *restrict dest, rsize_t destsz, const wchar_t *restrict src );
```

---

# `wctype.h` - wide-character classification and mapping utilities

<!-- CLIB -->

### Types

```c
wctrans_t
```

### Functions

```c
int       iswalnum_l(wint_t, locale_t);
int       iswalpha_l(wint_t, locale_t);
int       iswblank_l(wint_t, locale_t);
int       iswcntrl_l(wint_t, locale_t);
int       iswctype_l(wint_t, wctype_t, locale_t);
int       iswdigit_l(wint_t, locale_t);
int       iswgraph_l(wint_t, locale_t);
int       iswlower_l(wint_t, locale_t);
int       iswprint_l(wint_t, locale_t);
int       iswpunct_l(wint_t, locale_t);
int       iswspace_l(wint_t, locale_t);
int       iswupper_l(wint_t, locale_t);
int       iswxdigit_l(wint_t, locale_t);
wint_t    towctrans(wint_t, wctrans_t);
wint_t    towctrans_l(wint_t, wctrans_t, locale_t);
wint_t    towlower_l(wint_t, locale_t);
wint_t    towupper_l(wint_t, locale_t);
wctrans_t wctrans(const char *);
wctrans_t wctrans_l(const char *, locale_t);
wctype_t  wctype_l(const char *, locale_t);
```

---

# `wordexp.h` - word-expansion types

<!-- POSIX -->

### Types

```c
wordexp_t
```

### Constants

```c
WRDE_APPEND
WRDE_DOOFFS
WRDE_NOCMD
WRDE_REUSE
WRDE_SHOWERR
WRDE_UNDEF
WRDE_BADCHAR
WRDE_BADVAL
WRDE_CMDSUB
WRDE_NOSPACE
WRDE_SYNTAX
```

### Functions

```c
int  wordexp(const char *restrict, wordexp_t *restrict, int);
void wordfree(wordexp_t *);
```
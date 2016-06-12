#import "J2ObjC_common.h" 
#import "java/lang/AbstractMethodError.h" 
#import "java/lang/AbstractStringBuilder.h" 
#import "java/lang/annotation/Annotation.h" 
#import "java/lang/annotation/AnnotationFormatError.h" 
#import "java/lang/annotation/AnnotationTypeMismatchException.h" 
#import "java/lang/annotation/Documented.h" 
#import "java/lang/annotation/ElementType.h" 
#import "java/lang/annotation/IncompleteAnnotationException.h" 
#import "java/lang/annotation/Inherited.h" 
#import "java/lang/annotation/Retention.h" 
#import "java/lang/annotation/RetentionPolicy.h" 
#import "java/lang/annotation/Target.h" 
#import "java/lang/Appendable.h" 
#import "java/lang/ArithmeticException.h" 
#import "java/lang/ArrayIndexOutOfBoundsException.h" 
#import "java/lang/ArrayStoreException.h" 
#import "java/lang/AssertionError.h" 
#import "java/lang/AutoCloseable.h" 
#import "java/lang/Boolean.h" 
#import "java/lang/Byte.h" 
#import "java/lang/Character.h" 
#import "java/lang/CharSequence.h" 
#import "java/lang/ClassCastException.h" 
#import "java/lang/ClassFormatError.h" 
#import "java/lang/ClassLoader.h" 
#import "java/lang/ClassNotFoundException.h" 
#import "java/lang/CloneNotSupportedException.h" 
#import "java/lang/Comparable.h" 
#import "java/lang/Deprecated.h" 
#import "java/lang/Double.h" 
#import "java/lang/Enum.h" 
#import "java/lang/Error.h" 
#import "java/lang/Exception.h" 
#import "java/lang/ExceptionInInitializerError.h" 
#import "java/lang/Float.h" 
#import "java/lang/HexStringParser.h" 
#import "java/lang/IllegalAccessException.h" 
#import "java/lang/IllegalArgumentException.h" 
#import "java/lang/IllegalMonitorStateException.h" 
#import "java/lang/IllegalStateException.h" 
#import "java/lang/IllegalThreadStateException.h" 
#import "java/lang/IncompatibleClassChangeError.h" 
#import "java/lang/IndexOutOfBoundsException.h" 
#import "java/lang/InstantiationException.h" 
#import "java/lang/Integer.h" 
#import "java/lang/IntegralToString.h" 
#import "java/lang/InternalError.h" 
#import "java/lang/InterruptedException.h" 
#import "java/lang/Iterable.h" 
#import "java/lang/LinkageError.h" 
#import "java/lang/Long.h" 
#import "java/lang/Math.h" 
#import "java/lang/NegativeArraySizeException.h" 
#import "java/lang/NoSuchFieldError.h" 
#import "java/lang/NoSuchFieldException.h" 
#import "java/lang/NoSuchMethodError.h" 
#import "java/lang/NoSuchMethodException.h" 
#import "java/lang/NullPointerException.h" 
#import "java/lang/NumberFormatException.h" 
#import "java/lang/OutOfMemoryError.h" 
#import "java/lang/Override.h" 
#import "java/lang/Package.h" 
#import "java/lang/Readable.h" 
#import "java/lang/RealToString.h" 
#import "java/lang/ref/PhantomReference.h" 
#import "java/lang/ref/Reference.h" 
#import "java/lang/ref/ReferenceQueue.h" 
#import "java/lang/ref/SoftReference.h" 
#import "java/lang/ref/WeakReference.h" 
#import "java/lang/reflect/AccessibleObject.h" 
#import "java/lang/reflect/AnnotatedElement.h" 
#import "java/lang/reflect/Array.h" 
#import "java/lang/reflect/Constructor.h" 
#import "java/lang/reflect/ExecutableMember.h" 
#import "java/lang/reflect/Field.h" 
#import "java/lang/reflect/GenericArrayType.h" 
#import "java/lang/reflect/GenericDeclaration.h" 
#import "java/lang/reflect/GenericSignatureFormatError.h" 
#import "java/lang/reflect/InvocationHandler.h" 
#import "java/lang/reflect/InvocationTargetException.h" 
#import "java/lang/reflect/MalformedParameterizedTypeException.h" 
#import "java/lang/reflect/Member.h" 
#import "java/lang/reflect/Method.h" 
#import "java/lang/reflect/Modifier.h" 
#import "java/lang/reflect/ParameterizedType.h" 
#import "java/lang/reflect/ParameterizedTypeImpl.h" 
#import "java/lang/reflect/Proxy.h" 
#import "java/lang/reflect/ReflectPermission.h" 
#import "java/lang/reflect/Type.h" 
#import "java/lang/reflect/TypeVariable.h" 
#import "java/lang/reflect/TypeVariableImpl.h" 
#import "java/lang/reflect/UndeclaredThrowableException.h" 
#import "java/lang/reflect/WildcardType.h" 
#import "java/lang/ReflectiveOperationException.h" 
#import "java/lang/Runnable.h" 
#import "java/lang/Runtime.h" 
#import "java/lang/RuntimeException.h" 
#import "java/lang/RuntimePermission.h" 
#import "java/lang/SafeVarargs.h" 
#import "java/lang/SecurityException.h" 
#import "java/lang/SecurityManager.h" 
#import "java/lang/Short.h" 
#import "java/lang/StackOverflowError.h" 
#import "java/lang/StackTraceElement.h" 
#import "java/lang/StrictMath.h" 
#import "java/lang/StringBuffer.h" 
#import "java/lang/StringBuilder.h" 
#import "java/lang/StringIndexOutOfBoundsException.h" 
#import "java/lang/StringToReal.h" 
#import "java/lang/SuppressWarnings.h" 
#import "java/lang/System.h" 
#import "java/lang/Thread.h" 
#import "java/lang/ThreadDeath.h" 
#import "java/lang/ThreadGroup.h" 
#import "java/lang/ThreadLocal.h" 
#import "java/lang/Throwable.h" 
#import "java/lang/TypeNotPresentException.h" 
#import "java/lang/UnsupportedOperationException.h" 
#import "java/lang/VirtualMachineError.h" 
#import "java/lang/Void.h" 
#import "java/util/AbstractCollection.h" 
#import "java/util/AbstractList.h" 
#import "java/util/AbstractMap.h" 
#import "java/util/AbstractQueue.h" 
#import "java/util/AbstractSequentialList.h" 
#import "java/util/AbstractSet.h" 
#import "java/util/ArrayDeque.h" 
#import "java/util/ArrayList.h" 
#import "java/util/Arrays.h" 
#import "java/util/BitSet.h" 
#import "java/util/Calendar.h" 
#import "java/util/Collection.h" 
#import "java/util/Collections.h" 
#import "java/util/ComparableTimSort.h" 
#import "java/util/Comparator.h" 
#import "java/util/concurrent/AbstractExecutorService.h" 
#import "java/util/concurrent/ArrayBlockingQueue.h" 
#import "java/util/concurrent/atomic/AtomicBoolean.h" 
#import "java/util/concurrent/atomic/AtomicInteger.h" 
#import "java/util/concurrent/atomic/AtomicIntegerArray.h" 
#import "java/util/concurrent/atomic/AtomicIntegerFieldUpdater.h" 
#import "java/util/concurrent/atomic/AtomicLong.h" 
#import "java/util/concurrent/atomic/AtomicLongArray.h" 
#import "java/util/concurrent/atomic/AtomicLongFieldUpdater.h" 
#import "java/util/concurrent/atomic/AtomicMarkableReference.h" 
#import "java/util/concurrent/atomic/AtomicReference.h" 
#import "java/util/concurrent/atomic/AtomicReferenceArray.h" 
#import "java/util/concurrent/atomic/AtomicReferenceFieldUpdater.h" 
#import "java/util/concurrent/atomic/AtomicStampedReference.h" 
#import "java/util/concurrent/atomic/Fences.h" 
#import "java/util/concurrent/BlockingDeque.h" 
#import "java/util/concurrent/BlockingQueue.h" 
#import "java/util/concurrent/BrokenBarrierException.h" 
#import "java/util/concurrent/Callable.h" 
#import "java/util/concurrent/CancellationException.h" 
#import "java/util/concurrent/CompletionService.h" 
#import "java/util/concurrent/ConcurrentHashMap.h" 
#import "java/util/concurrent/ConcurrentLinkedDeque.h" 
#import "java/util/concurrent/ConcurrentLinkedQueue.h" 
#import "java/util/concurrent/ConcurrentMap.h" 
#import "java/util/concurrent/ConcurrentNavigableMap.h" 
#import "java/util/concurrent/ConcurrentSkipListMap.h" 
#import "java/util/concurrent/ConcurrentSkipListSet.h" 
#import "java/util/concurrent/CopyOnWriteArrayList.h" 
#import "java/util/concurrent/CopyOnWriteArraySet.h" 
#import "java/util/concurrent/CountDownLatch.h" 
#import "java/util/concurrent/CyclicBarrier.h" 
#import "java/util/concurrent/Delayed.h" 
#import "java/util/concurrent/DelayQueue.h" 
#import "java/util/concurrent/Exchanger.h" 
#import "java/util/concurrent/ExecutionException.h" 
#import "java/util/concurrent/Executor.h" 
#import "java/util/concurrent/ExecutorCompletionService.h" 
#import "java/util/concurrent/Executors.h" 
#import "java/util/concurrent/ExecutorService.h" 
#import "java/util/concurrent/ForkJoinPool.h" 
#import "java/util/concurrent/ForkJoinTask.h" 
#import "java/util/concurrent/ForkJoinWorkerThread.h" 
#import "java/util/concurrent/Future.h" 
#import "java/util/concurrent/FutureTask.h" 
#import "java/util/concurrent/LinkedBlockingDeque.h" 
#import "java/util/concurrent/LinkedBlockingQueue.h" 
#import "java/util/concurrent/LinkedTransferQueue.h" 
#import "java/util/concurrent/locks/AbstractOwnableSynchronizer.h" 
#import "java/util/concurrent/locks/AbstractQueuedLongSynchronizer.h" 
#import "java/util/concurrent/locks/AbstractQueuedSynchronizer.h" 
#import "java/util/concurrent/locks/Condition.h" 
#import "java/util/concurrent/locks/Lock.h" 
#import "java/util/concurrent/locks/LockSupport.h" 
#import "java/util/concurrent/locks/ReadWriteLock.h" 
#import "java/util/concurrent/locks/ReentrantLock.h" 
#import "java/util/concurrent/locks/ReentrantReadWriteLock.h" 
#import "java/util/concurrent/Phaser.h" 
#import "java/util/concurrent/PriorityBlockingQueue.h" 
#import "java/util/concurrent/RecursiveAction.h" 
#import "java/util/concurrent/RecursiveTask.h" 
#import "java/util/concurrent/RejectedExecutionException.h" 
#import "java/util/concurrent/RejectedExecutionHandler.h" 
#import "java/util/concurrent/RunnableFuture.h" 
#import "java/util/concurrent/RunnableScheduledFuture.h" 
#import "java/util/concurrent/ScheduledExecutorService.h" 
#import "java/util/concurrent/ScheduledFuture.h" 
#import "java/util/concurrent/ScheduledThreadPoolExecutor.h" 
#import "java/util/concurrent/Semaphore.h" 
#import "java/util/concurrent/SynchronousQueue.h" 
#import "java/util/concurrent/ThreadFactory.h" 
#import "java/util/concurrent/ThreadLocalRandom.h" 
#import "java/util/concurrent/ThreadPoolExecutor.h" 
#import "java/util/concurrent/TimeoutException.h" 
#import "java/util/concurrent/TimeUnit.h" 
#import "java/util/concurrent/TransferQueue.h" 
#import "java/util/ConcurrentModificationException.h" 
#import "java/util/Currency.h" 
#import "java/util/Date.h" 
#import "java/util/Deque.h" 
#import "java/util/Dictionary.h" 
#import "java/util/DualPivotQuicksort.h" 
#import "java/util/DuplicateFormatFlagsException.h" 
#import "java/util/EmptyStackException.h" 
#import "java/util/Enumeration.h" 
#import "java/util/EnumMap.h" 
#import "java/util/EnumSet.h" 
#import "java/util/EventListener.h" 
#import "java/util/EventListenerProxy.h" 
#import "java/util/EventObject.h" 
#import "java/util/FormatFlagsConversionMismatchException.h" 
#import "java/util/Formattable.h" 
#import "java/util/FormattableFlags.h" 
#import "java/util/Formatter.h" 
#import "java/util/FormatterClosedException.h" 
#import "java/util/Grego.h" 
#import "java/util/GregorianCalendar.h" 
#import "java/util/HashMap.h" 
#import "java/util/HashMap_PackagePrivate.h" 
#import "java/util/HashSet.h" 
#import "java/util/Hashtable.h" 
#import "java/util/HugeEnumSet.h" 
#import "java/util/IdentityHashMap.h" 
#import "java/util/IllegalFormatCodePointException.h" 
#import "java/util/IllegalFormatConversionException.h" 
#import "java/util/IllegalFormatException.h" 
#import "java/util/IllegalFormatFlagsException.h" 
#import "java/util/IllegalFormatPrecisionException.h" 
#import "java/util/IllegalFormatWidthException.h" 
#import "java/util/InputMismatchException.h" 
#import "java/util/InvalidPropertiesFormatException.h" 
#import "java/util/Iterator.h" 
#import "java/util/LinkedHashMap.h" 
#import "java/util/LinkedHashMap_PackagePrivate.h" 
#import "java/util/LinkedHashSet.h" 
#import "java/util/LinkedList.h" 
#import "java/util/List.h" 
#import "java/util/ListIterator.h" 
#import "java/util/ListResourceBundle.h" 
#import "java/util/Locale.h" 
#import "java/util/logging/ConsoleHandler.h" 
#import "java/util/logging/ErrorManager.h" 
#import "java/util/logging/Filter.h" 
#import "java/util/logging/Formatter.h" 
#import "java/util/logging/Handler.h" 
#import "java/util/logging/IOSLogHandler.h" 
#import "java/util/logging/Level.h" 
#import "java/util/logging/Logger.h" 
#import "java/util/logging/LoggingMXBean.h" 
#import "java/util/logging/LoggingPermission.h" 
#import "java/util/logging/LogManager.h" 
#import "java/util/logging/LogRecord.h" 
#import "java/util/logging/MemoryHandler.h" 
#import "java/util/logging/SimpleFormatter.h" 
#import "java/util/logging/StreamHandler.h" 
#import "java/util/logging/XMLFormatter.h" 
#import "java/util/Map.h" 
#import "java/util/MapEntry.h" 
#import "java/util/MiniEnumSet.h" 
#import "java/util/MissingFormatArgumentException.h" 
#import "java/util/MissingFormatWidthException.h" 
#import "java/util/MissingResourceException.h" 
#import "java/util/NavigableMap.h" 
#import "java/util/NavigableSet.h" 
#import "java/util/NoSuchElementException.h" 
#import "java/util/Objects.h" 
#import "java/util/Observable.h" 
#import "java/util/Observer.h" 
#import "java/util/PriorityQueue.h" 
#import "java/util/Properties.h" 
#import "java/util/PropertyPermission.h" 
#import "java/util/PropertyResourceBundle.h" 
#import "java/util/Queue.h" 
#import "java/util/Random.h" 
#import "java/util/RandomAccess.h" 
#import "java/util/regex/Matcher.h" 
#import "java/util/regex/MatchResult.h" 
#import "java/util/regex/MatchResultImpl.h" 
#import "java/util/regex/Pattern.h" 
#import "java/util/regex/PatternSyntaxException.h" 
#import "java/util/regex/Splitter.h" 
#import "java/util/ResourceBundle.h" 
#import "java/util/ServiceConfigurationError.h" 
#import "java/util/ServiceLoader.h" 
#import "java/util/Set.h" 
#import "java/util/SimpleTimeZone.h" 
#import "java/util/SortedMap.h" 
#import "java/util/SortedSet.h" 
#import "java/util/Stack.h" 
#import "java/util/StringTokenizer.h" 
#import "java/util/Timer.h" 
#import "java/util/TimerTask.h" 
#import "java/util/TimeZone.h" 
#import "java/util/TimSort.h" 
#import "java/util/TooManyListenersException.h" 
#import "java/util/TreeMap.h" 
#import "java/util/TreeSet.h" 
#import "java/util/UnknownFormatConversionException.h" 
#import "java/util/UnknownFormatFlagsException.h" 
#import "java/util/UnsafeArrayList.h" 
#import "java/util/UUID.h" 
#import "java/util/Vector.h" 
#import "java/util/WeakHashMap.h" 
#import "java/util/zip/Adler32.h" 
#import "java/util/zip/CheckedInputStream.h" 
#import "java/util/zip/CheckedOutputStream.h" 
#import "java/util/zip/Checksum.h" 
#import "java/util/zip/CRC32.h" 
#import "java/util/zip/DataFormatException.h" 
#import "java/util/zip/Deflater.h" 
#import "java/util/zip/DeflaterInputStream.h" 
#import "java/util/zip/DeflaterOutputStream.h" 
#import "java/util/zip/GZIPInputStream.h" 
#import "java/util/zip/GZIPOutputStream.h" 
#import "java/util/zip/Inflater.h" 
#import "java/util/zip/InflaterInputStream.h" 
#import "java/util/zip/InflaterOutputStream.h" 
#import "java/util/zip/ZipConstants.h" 
#import "java/util/zip/ZipEntry.h" 
#import "java/util/zip/ZipError.h" 
#import "java/util/zip/ZipException.h" 
#import "java/util/zip/ZipFile.h" 
#import "java/util/zip/ZipInputStream.h" 
#import "java/util/zip/ZipOutputStream.h" 
#import "java/io/BufferedInputStream.h" 
#import "java/io/BufferedOutputStream.h" 
#import "java/io/BufferedReader.h" 
#import "java/io/BufferedWriter.h" 
#import "java/io/ByteArrayInputStream.h" 
#import "java/io/ByteArrayOutputStream.h" 
#import "java/io/CharArrayReader.h" 
#import "java/io/CharArrayWriter.h" 
#import "java/io/CharConversionException.h" 
#import "java/io/Closeable.h" 
#import "java/io/DataInput.h" 
#import "java/io/DataInputStream.h" 
#import "java/io/DataOutput.h" 
#import "java/io/DataOutputStream.h" 
#import "java/io/EmulatedFields.h" 
#import "java/io/EmulatedFieldsForDumping.h" 
#import "java/io/EmulatedFieldsForLoading.h" 
#import "java/io/EOFException.h" 
#import "java/io/Externalizable.h" 
#import "java/io/File.h" 
#import "java/io/FileDescriptor.h" 
#import "java/io/FileFilter.h" 
#import "java/io/FileInputStream.h" 
#import "java/io/FilenameFilter.h" 
#import "java/io/FileNotFoundException.h" 
#import "java/io/FileOutputStream.h" 
#import "java/io/FilePermission.h" 
#import "java/io/FileReader.h" 
#import "java/io/FileWriter.h" 
#import "java/io/FilterInputStream.h" 
#import "java/io/FilterOutputStream.h" 
#import "java/io/FilterReader.h" 
#import "java/io/FilterWriter.h" 
#import "java/io/Flushable.h" 
#import "java/io/InputStream.h" 
#import "java/io/InputStreamReader.h" 
#import "java/io/InterruptedIOException.h" 
#import "java/io/InvalidClassException.h" 
#import "java/io/InvalidObjectException.h" 
#import "java/io/IOException.h" 
#import "java/io/LineNumberInputStream.h" 
#import "java/io/LineNumberReader.h" 
#import "java/io/NotActiveException.h" 
#import "java/io/NotSerializableException.h" 
#import "java/io/ObjectInput.h" 
#import "java/io/ObjectInputStream.h" 
#import "java/io/ObjectInputValidation.h" 
#import "java/io/ObjectOutput.h" 
#import "java/io/ObjectOutputStream.h" 
#import "java/io/ObjectStreamClass.h" 
#import "java/io/ObjectStreamConstants.h" 
#import "java/io/ObjectStreamException.h" 
#import "java/io/ObjectStreamField.h" 
#import "java/io/OptionalDataException.h" 
#import "java/io/OutputStream.h" 
#import "java/io/OutputStreamWriter.h" 
#import "java/io/PipedInputStream.h" 
#import "java/io/PipedOutputStream.h" 
#import "java/io/PipedReader.h" 
#import "java/io/PipedWriter.h" 
#import "java/io/PrintStream.h" 
#import "java/io/PrintWriter.h" 
#import "java/io/PushbackInputStream.h" 
#import "java/io/PushbackReader.h" 
#import "java/io/RandomAccessFile.h" 
#import "java/io/Reader.h" 
#import "java/io/SequenceInputStream.h" 
#import "java/io/Serializable.h" 
#import "java/io/SerializablePermission.h" 
#import "java/io/SerializationHandleMap.h" 
#import "java/io/StreamCorruptedException.h" 
#import "java/io/StreamTokenizer.h" 
#import "java/io/StringBufferInputStream.h" 
#import "java/io/StringReader.h" 
#import "java/io/StringWriter.h" 
#import "java/io/SyncFailedException.h" 
#import "java/io/UnsupportedEncodingException.h" 
#import "java/io/UTFDataFormatException.h" 
#import "java/io/WriteAbortedException.h" 
#import "java/io/Writer.h" 
#import "AddOneFollowUpLogic.h" 
#import "AddOrRefuseFriendLogic.h" 
#import "AddRecordLogic.h" 
#import "AeSimpleSHA1.h" 
#import "AlarmClock.h" 
#import "AlarmClockLogic.h" 
#import "AnnualFreeLogic.h" 
#import "ApiSystem.h" 
#import "AttachmentManager.h" 
#import "BadHanyuPinyinOutputFormatCombination.h" 
#import "BaiduAnalysis.h" 
#import "Base64Util.h" 
#import "BaseLogic.h" 
#import "BrowsePicLogic.h" 
#import "BrowseRecord.h" 
#import "CancleFollowUpLogic.h" 
#import "CareConstants.h" 
#import "CertificationStatus.h" 
#import "ChangeDPNameLogic.h" 
#import "ChangePasswordUILogic.h" 
#import "ChangePhoneUILogic.h" 
#import "ChartEntity.h" 
#import "ChartModel.h" 
#import "ChatGroupLogic.h" 
#import "ChatUserInfo.h" 
#import "CheckVersionLogic.h" 
#import "ChineseToPinyinResource.h" 
#import "ChinesetSortHelper.h" 
#import "City.h" 
#import "CloudRecognizeLogic.h" 
#import "Constants.h" 
#import "ContactLogic.h" 
#import "Contacts.h" 
#import "CreatePatientLogic.h" 
#import "CreateRecordLogic.h" 
#import "Data.h" 
#import "DeleteFollowUpTempleLogic.h" 
#import "DelGroupChatLogic.h" 
#import "DelPatientLogic.h" 
#import "DelRecordLogic.h" 
#import "Department.h" 
#import "DES3Utils.h" 
#import "Doctor.h" 
#import "DoctorAddFriendLogic.h" 
#import "DoctorAuthLogic.h" 
#import "DoctorHomeLogic.h" 
#import "DownloadPatientLogic.h" 
#import "EditOneExamItemLogic.h" 
#import "Encryption.h" 
#import "Exam.h" 
#import "ExamChartTools.h" 
#import "ExpenseDetailLogic.h" 
#import "FileHelper.h" 
#import "FileSystem.h" 
#import "FilterItem.h" 
#import "FollowUp.h" 
#import "FollowUpTemple.h" 
#import "FollowUpTempleListLogic.h" 
#import "FQBinaryResponseHandle.h" 
#import "FQHeader.h" 
#import "FQHttpParams.h" 
#import "FQHttpResponseHandle.h" 
#import "FQHttpResponseInterface.h" 
#import "FQJsonResponseHandle.h" 
#import "FQLog.h" 
#import "FQLooper.h" 
#import "FQLoopQueue.h" 
#import "FQRemoteDebugTool.h" 
#import "FQStringResponseHandle.h" 
#import "GetAddingFriendsListLogic.h" 
#import "GetChartLogic.h" 
#import "GetExamListLogic.h" 
#import "GetImagePathLogic.h" 
#import "GetMemberListLogic.h" 
#import "GetPatientDiagnoseLogic.h" 
#import "GetPatientItemExamLogic.h" 
#import "GetPatientListLogic.h" 
#import "GetProviderLogic.h" 
#import "GetRecordDetailsLogic.h" 
#import "GetRecordInfoByItemLogic.h" 
#import "GetRecordItemLogic.h" 
#import "GetRecordListLogic.h" 
#import "GetRecordTypeListLogic.h" 
#import "GetUserTotalDataLogic.h" 
#import "GwoyeuRomatzyhResource.h" 
#import "GwoyeuRomatzyhTranslator.h" 
#import "HalcyonEntity.h" 
#import "HalcyonHttpResponseHandle.h" 
#import "HalcyonUploadLooper.h" 
#import "HalyconOnLineHandle.h" 
#import "HanyuPinyinCaseType.h" 
#import "HanyuPinyinOutputFormat.h" 
#import "HanyuPinyinToneType.h" 
#import "HanyuPinyinVCharType.h" 
#import "HMACSHA1.h" 
#import "HomeAge.h" 
#import "HomeAgeLogic.h" 
#import "HomeData.h" 
#import "HomeGetChartDataLogic.h" 
#import "HomeMessageLogic.h" 
#import "HomeOneDayData.h" 
#import "Hospital.h" 
#import "HttpClientPotocol.h" 
#import "HttpHelper.h" 
#import "HttpParamPotocol.h" 
#import "HttpRequestPotocol.h" 
#import "ICallback.h" 
#import "IOHelper.h" 
#import "IOS.h" 
#import "ItemExam.h" 
#import "JSON.h" 
#import "JSONArray.h" 
#import "JSONException.h" 
#import "JsonHelper.h" 
#import "JSONObject.h" 
#import "JSONStringer.h" 
#import "JSONTokener.h" 
#import "LeaveMessage.h" 
#import "LogicExamCharts.h" 
#import "LoginLogic.h" 
#import "LoopCell.h" 
#import "LoopCellHandle.h" 
#import "LoopUpLoadCell.h" 
#import "MD5.h" 
#import "MedicalItem.h" 
#import "MedicalReport.h" 
#import "Medicine.h" 
#import "ModifyObject.h" 
#import "ModifyPatientNameLogic.h" 
#import "ModifyRecordNameLogic.h" 
#import "MyRelationship.h" 
#import "OnceFollowUpCycle.h" 
#import "OneCopy.h" 
#import "OneKsyDownLoadPatientsLogic.h" 
#import "OneType.h" 
#import "onHandlerCompleteListener.h" 
#import "OperateFollowUpTempleLogic.h" 
#import "ParamsWrapper.h" 
#import "PathUrlMap.h" 
#import "Patient.h" 
#import "PatientAbstract.h" 
#import "PatientFriend.h" 
#import "PatientNameLogic.h" 
#import "PatientRecommendName.h" 
#import "PatientUpdateListLogic.h" 
#import "Person.h" 
#import "PersonInfoUILogic.h" 
#import "Photo.h" 
#import "PhotoRecord.h" 
#import "PhotosManager.h" 
#import "PinyinFormatter.h" 
#import "PinyinHelper.h" 
#import "PinyinRomanizationResource.h" 
#import "PinyinRomanizationTranslator.h" 
#import "PinyinRomanizationType.h" 
#import "Platform.h" 
#import "PostRemarkLogic.h" 
#import "PracticeResponseHandle.h" 
#import "ReadHistoryManager.h" 
#import "ReadUserInfoLogic.h" 
#import "RecognitionLogic.h" 
#import "Record.h" 
#import "RecordAbstract.h" 
#import "RecordCache.h" 
#import "RecordConstants.h" 
#import "RecordData.h" 
#import "RecordDTExamLogic.h" 
#import "RecordDTLogic.h" 
#import "RecordDTNormalLogic.h" 
#import "RecordExams.h" 
#import "RecordInfo.h" 
#import "RecordItem.h" 
#import "RecordItemSamp.h" 
#import "RecordListLogic.h" 
#import "RecordTool.h" 
#import "RecordType.h" 
#import "RecordUploadNotify.h" 
#import "RecycleLogic.h" 
#import "RegisterLogic.h" 
#import "RegisterUILogic.h" 
#import "Remark.h" 
#import "RemoveRecordItemLogic.h" 
#import "ReportChartLogic.h" 
#import "ReportDocumentUILogic.h" 
#import "RequestCSDLogic.h" 
#import "RequestMedicineLogic.h" 
#import "RequestParams.h" 
#import "ResetDoctorInfoLogic.h" 
#import "ResourceHelper.h" 
#import "ResquestIdentfyLogic.h" 
#import "SaveCDSLogic.h" 
#import "SaveInfoUILogic.h" 
#import "ScoreDetail.h" 
#import "SearchCriteriaLogic.h" 
#import "SearchDepartmentLogic.h" 
#import "SearchFilter.h" 
#import "SearchFollowUpDetailLogic.h" 
#import "SearchFollowUpTempleDetailLogic.h" 
#import "SearchFriendsLogic.h" 
#import "SearchHistoryManager.h" 
#import "SearchHospitalLogic.h" 
#import "SearchLogic.h" 
#import "SearchParams.h" 
#import "SearchPatientDetailLogic.h" 
#import "SearchPatientLogic.h" 
#import "SendFollowUpLeaveMessageLogic.h" 
#import "SendPatientLogic.h" 
#import "SequenceHandel.h" 
#import "SettingFollowUpManager.h" 
#import "SettingLogic.h" 
#import "SHA1.h" 
#import "ShareLogic.h" 
#import "ShareRecordLogic.h" 
#import "SnapPhotoManager.h" 
#import "StandardExamRecord.h" 
#import "StrDataComparator.h" 
#import "StructuredLogic.h" 
#import "SuffererAbstract.h" 
#import "SuffererListLogic.h" 
#import "SurveyPatientItem.h" 
#import "SurveyPatientLogic.h" 
#import "SurveyRecordItem.h" 
#import "SurveyRecordLogic.h" 
#import "Tag.h" 
#import "TagLogic.h" 
#import "TagUtils.h" 
#import "TextHelper.h" 
#import "TimeFormatUtils.h" 
#import "Timer.h" 
#import "TimerMember.h" 
#import "Tool.h" 
#import "Trash.h" 
#import "UIAuthLogic.h" 
#import "UILoginLogic.h" 
#import "UpLoadChatImageLogic.h" 
#import "UpLoadChatImageManager.h" 
#import "UploadFeedBackLogic.h" 
#import "UploadImageHelper.h" 
#import "UpLoadObject.h" 
#import "UploadRecordLogic.h" 
#import "UploadStateLogic.h" 
#import "UriConstants.h" 
#import "User.h" 
#import "UserAction.h" 
#import "UserActionManger.h" 
#import "UserInfoManagerLogic.h" 
#import "UserProfileManager.h" 
#import "Version.h" 
#import "ViewOCRInfoLogic.h" 
#import "ViewRemarksLogic.h" 
#import "VisualData.h" 
#import "VisualizeCard.h" 
#import "VisualizeEntity.h" 
#import "VisualMap.h" 
#import "HomeAgeLogic.h"
#import "HomeAge.h"
